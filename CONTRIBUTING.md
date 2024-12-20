## Contributing a section

Thank you for considering contributing to the book. Feel free to make a pull request to submit changes! Here is a small [guide](https://docs.github.com/en/get-started/exploring-projects-on-github/contributing-to-a-project) to help.

### Style and formatting

Please use a spell checker and ensure that your text is grammatically correct. We use American English spelling.

In style, we're inspired by [Cormac McCarthy](https://www.nature.com/articles/d41586-019-02918-5):

- Keep sentences short, active, simply constructed and direct.
- Try to be minimalist - remove extra words or commas whenever you can.
- Choose concrete language and examples.

A tool such as Grammarly can be helpful in this regard.

- Use bolding for emphasis. Use it only for very important things.
- Use `monospace` for code.
- Add a callout box ` {.callout-caution}` that highlights computational requirements for your notebook with they are non-trivial


### Code formatting

Please use `ruff` to format and lint your code. The `pre-commit` hook will run `ruff` on your code before you commit it.
To install the pre-commit hook, run the following command in the root directory of the repository:

```bash
pre-commit install
```

### Dependencies

Update the `requirements.txt` file from time to time. For example, by running the `pip-compile` workflow (e.g. using [uv](https://github.com/astral-sh/uv)).

### Explanations

We aim that the book is accessible to a wide audience. A first year undergraduate student should be able to understand the content. Please keep this in mind when writing your section.

We can add value to the book by providing explanations of the concepts and techniques used in the code. Please provide explanations of the code and the concepts used in the code.


### Jupyter Book

We use [Jupyter Book](https://jupyterbook.org/en/stable/intro.html#) to build the book.
In the current setup, you must add your section to the table of contents configuration file `_toc.yml` to include it in the book.
You can add `.md` and `.ipynb` files.
You can test the book by running:

```console
jupyter-book build .
```

this will generate a folder `_build` that contains `html` files that you can display in your browser.

## Plotting style

Use the `book.mplstyle` file to set the plotting style for the book.

## Margin Notes

Right column notes are intended to provide supplementary information that gives context, serves as a reminder, or offers additional details about the main text. They are not essential for comprehending the main text and can be considered similar to footnotes within the text.
