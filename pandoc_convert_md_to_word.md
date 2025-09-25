# Convert Markdown files to word processor docs using pandoc

*This file is a summary of [Scott Nesbitt's article](https://opensource.com/article/19/5/convert-markdown-to-word-pandoc#comments)*

If your day job requires you to convert text to a Word file the good news is that you're not stuck copying and pasting unformatted text into a word processor document. Using **[pandoc](https://pandoc.org/)**, you can quickly give people what they want. Let's take a look at how to convert a document from Markdown to a word processor format in Linux using pandoc. ​​​​

## Converting basics

To begin, [install pandoc](https://pandoc.org/installing.html) on your computer. Then, crack open a console terminal window and navigate to the directory containing the file that you want to convert.

```bash
pandoc -t odt filename.md -o filename.odt
```

> ❕Note:
> Replace `odt` with `docx` for Microsoft Word.

## Converting with Templates

**pandoc** has a nifty feature enabling you to specify a style template when converting a marked-up plaintext file to a word processor format. In this file, you can edit a small number of styles in the document, including those that control the look of paragraphs, headings, captions, titles and subtitles, a basic table, and hyperlinks.

### Creating a template

In order to style your documents, you can't just use any template. You need to generate what pandoc calls a reference template, which is the template it uses when converting text files to word processor documents. To create this file, type the following in a terminal window:

```bash
pandoc -o custom-reference.odt --print-default-data-file reference.odt
```

You may make changes to the template but keep in mind that the [pandoc manual](https://pandoc.org/MANUAL.html) warns that: *If you use custom templates, you may need to revise them as pandoc changes. We recommend tracking the changes in the default templates, and modifying your custom templates accordingly. An easy way to do this is to fork the [pandoc-templates](https://github.com/jgm/pandoc-templates) repository and merge in changes after each pandoc release.*

### Using the template

There are two ways to use the template that you just create:

1. Drop the template in your `/home` directory's `.pandoc` directory, if it doesn't exist you may create it.

2. Reference your template in you command:

```bash
pandoc -t odt file-name.md --reference-doc=path-to-your-file/reference.odt -o file-name.odt
```
