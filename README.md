# What will you find here?
Curriculum Vitae, Resume and Cover Letter

# Improvements from Awesome CV 

### Dedicated Resources folder instead of symlinks

Use environment variable for loading style, class and fonts resources (see
Makefile) with `TEXINPUTS` instead of using symlinks.

This allows you to have multiple folders for each job/career type without the
need to symlinks every time.

### Fix the fonts loading path

```
! fontspec error: "font-not-found"
! The font "FontAwesome" cannot be found.
```

Fix both paths in .cls and .sty files:

* `fontawesome.sty` => `\newfontfamily{\FA}[Path=./resources/fonts/]{FontAwesome}`
* `awesome-cv.cls` => `\newcommand*{\fontdir}[1][./resources/fonts/]{\def\@fontdir{#1}} \fontdir`

### More cleaning for clean task

Remove `.aux`, `.log` and `.out` file

### Additional customization

TODO:
