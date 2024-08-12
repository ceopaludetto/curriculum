# Curriculum

This is my curriculum source code. It is written in [Typst](https://github.com/typst/typst) a new markup-based typesetting system that is powerful and easy to learn.

## How to generate the PDF

To generate the PDF, you need to have the [Tinymist Typst VSCode extension](https://github.com/Myriad-Dreamin/tinymist) installed. After that, open the [index.typ](./index.typ) file and click on the `show exported PDF` button.

## How to add new content

To add new content, you need to edit the [index.typ](./index.typ) file or edit the static data in the [locales](./locales) folder.

## How to change the generated language

To change the generated language, you need to edit the [index.typ](./index.typ) file and change the `language` variable in the first line. This will import the correct locale file.
