#!/usr/bin/env python3
"""Generate print-optimized derivatives from original source images.

Source of truth (originals, keep, high-res):
  src/logos/me.png      -> 1280x1280 RGBA profile photo
  src/signature.png     -> 1117x661 RGBA signature

Derivatives (used by cv.typ / letter.typ, committed, tiny):
  src/logos/me.optimized.jpg
  src/signature.optimized.jpg

Why: Typst embeds PNGs losslessly. A 1280px photo displayed at 3.6cm
(~102pt, ~430px @ 300dpi) wastes ~1.5MB. Optimized JPEGs are ~100x smaller
with no visible difference at print size.

Usage:
  python3 scripts/optimize-images.py
  # or: ./scripts/optimize-images.py
"""
from PIL import Image
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent

JOBS = [
    # (source, dest, max_size, quality)
    ("src/logos/me.png", "src/logos/me.optimized.jpg", 400, 80),
    ("src/signature.png", "src/signature.optimized.jpg", 440, 80),
]


def optimize(src_rel: str, dst_rel: str, max_dim: int, quality: int) -> None:
    src = ROOT / src_rel
    dst = ROOT / dst_rel
    im = Image.open(src).convert("RGB")
    w, h = im.size
    scale = min(1.0, max_dim / max(w, h))
    if scale < 1.0:
        im = im.resize((round(w * scale), round(h * scale)), Image.LANCZOS)
    dst.parent.mkdir(parents=True, exist_ok=True)
    im.save(dst, "JPEG", quality=quality, optimize=True, progressive=False)
    print(f"{src_rel} ({w}x{h}, {src.stat().st_size//1024} KB) "
          f"-> {dst_rel} ({im.size[0]}x{im.size[1]}, {dst.stat().st_size//1024} KB)")


def main() -> None:
    for src, dst, size, q in JOBS:
        optimize(src, dst, size, q)


if __name__ == "__main__":
    main()
