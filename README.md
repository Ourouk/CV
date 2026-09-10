# CV — Andrea Spelgatti

Multilingual CV (EN + FR) built with [Typst](https://typst.app/) on the
[`brilliant-cv`](https://typst.app/universe/package/brilliant-cv) 2.0.4 template.

Releases with ready-to-send PDFs (`cv-en.pdf`, `cv-fr.pdf`) are published
automatically — see the [Releases page](https://github.com/Ourouk/CV/releases).

## Structure

- `cv.typ` — CV entry point (section order: Professional Experience, Projects, Education, Skills)
- `letter.typ` — cover letter entry point
- `metadata.toml` — personal info, layout, ATS keywords, per-language header quotes
- `modules_en/`, `modules_fr/` — content per language (professional, projects, education, skills, …)
- `src/` — profile photo, signature, bibliography
- `.github/workflows/release.yml` — CI building both PDFs and publishing a GitHub Release on `v*` tags

## Build locally

Install Typst 0.15.1 and the required fonts (Arch):

```sh
sudo pacman -S typst ttf-linux-libertine adobe-source-sans-fonts ttf-roboto otf-font-awesome
```

Source Sans 3 and Font Awesome 6 are fetched automatically only in CI;
for local builds install them into `~/.local/share/fonts/` if you want
pixel-identical output (otherwise Typst falls back with warnings).

Then:

```sh
typst compile cv.typ cv-en.pdf      # English (default, language = "en")
# French: set language = "fr" in metadata.toml, then
typst compile cv.typ cv-fr.pdf
```

Both PDFs are single-page A4. The in-repo `cv.pdf` is a local preview build
and is gitignored — releases carry the official PDFs.

## Release a new version

```sh
git tag vX.Y.Z
git push origin vX.Y.Z    # triggers the release workflow
```

Pushing to `main` without a tag only runs no release; each `v*` tag produces
a Release with both PDFs attached.
