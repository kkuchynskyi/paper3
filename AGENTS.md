# AGENTS.md


My name is Kyrylo Kuchynskyi. I am a PhD student in the department of "Theory of random processes" at the [Institute of Mathematics](https://stochastic.imath.kiev.ua/en/main-page/), National Academy of Sciences of Ukraine. My personal page is https://www.imath.kiev.ua/people/profile.php?pid=512&lang=en. 
These are my rules and preferences for working on this LaTeX project.

## Folder structure

- All generated build files, e.g. `.fls`, `.aux`, etc., should be inside the `build/` folder. Build LaTeX with `latexmk` and write outputs to `build/`. Use `latexmk -pdf -outdir=build main.tex`.
- All references should be inside `reference.bib` and used in the `.tex` file with `\bibliographystyle{apalike}` and `\bibliography{reference}`.
- After edits touching labels, citations, bibliography, theorem numbering, or figures, run a full `latexmk` build and check the log for undefined references or citations.
- The assets should be inside folder `figures/`
- `latexmkrc` should contain a single line `$out_dir = 'build';`


## LaTeX Preferences

- Preserve the existing document class and package stack.
- Put reusable theorem environments, math operators, and macros in the preamble.
- Use `amsthm` environments for mathematical statements. Use standard `amsmath` environments and operators instead of custom definitions when possible.
- Keep theorem-like blocks as `theorem`, `lemma`, `proposition`, `corollary`, `assumption`, `definition`, `example`, and `remark`. Use the `proof` environment from `amsthm` for proofs.
- Prefer `\DeclareMathOperator` for named operators such as `\Ent`, `\Var`, and `\Lip`. Use short macros such as `\R`, `\cP`, `\E`, `\op`, and `\HS` only when already established in this document.
- This project uses `cleveref`; use `\Cref` at sentence start and `\cref` mid-sentence. `\Cref` makes it easier to navigate through the generated PDF.Use `\eqref` for equations.
- Put `\label{...}` on statements that are referenced later, next to the definition on the same line as the environment opening, e.g. `\begin{theorem}[Jacobian equation]\label{thm:jacobian-sde}`. Use descriptive labels with standard prefixes: `sec:`, `subsec:`, `eq:`, `thm:`, `lem:`, `prop:`, `cor:`, `ass:`, `def:`, `ex:`, `rem:`, `fig:`, and `app:`. Use lower-case descriptive slugs for new labels.
- Always `\( ... \)` for inline math in new text instead of `$...$`.
- Do not use `\[ \]` for displayed math and use blocks like `equation*`, `align*` instead. Use numbered `equation` or `align` only when referenced; otherwise use starred environments.  Use `align` or `align*` for multiline derivations and `cases` for systems of equations.
- Prefer long LaTeX source lines up to 147 columns. Do not wrap prose, theorem statements, or comments at short widths such as 80 or 100 columns.
- When editing a paragraph, join artificially short source lines in the touched paragraph when it improves readability and keeps lines at or below 147 columns.
- In `align` and `align*` blocks, keep each logical equation row on one physical source line when it fits within 147 columns. Do not split a row after operators such as `+`, `-`, `=`, or after commas merely because of a short formatter width; use `\\` for real equation-row breaks.
- To automate wrapping, use `latexindent` with modify-line-breaks and an inline YAML setting, for example `latexindent -w -m -y="{modifyLineBreaks: {textWrapOptions: {columns: 147}}}" main.tex`. Do not run broad reflow on the whole file unless explicitly requested.
- VS Code should format LaTeX on Command+S through LaTeX Workshop using `.vscode/settings.json` and the inline `latexindent` arguments `-m` and `-y={...columns: 147...}`.
- Each `section` and `subsection` should start with a specific comment duplicating the section title in order to make it visually distinct and make it easier to navigate through the whole `.tex` file. It is my personal preference. Use a label for each `section` and `subsection`. The example of section
```
% ============================================================
% The averaged Jacobian
% ============================================================
\section{The averaged Jacobian}\label{sec:averaged-jacobian}
```
