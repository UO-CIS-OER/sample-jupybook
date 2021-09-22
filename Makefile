# Jupyter Book build recipes.

# Per-project variables
SRC_TEXT = IntroCS
TOC = $(SRC_TEXT)/_build/html/intro.html
ENV = env
ACTIVATE = source $(ENV)/bin/activate


# Default target
all:  book

# Installation --- we use a Python virtual environment.
#   (Conda would be an alternative)
install: env

$(ENV): requirements.txt
	python3 -m venv $(ENV)
	source $(ENV)/bin/activate; pip3 install -r requirements.txt

book:	$(ENV) $(SRC_TEXT)
	$(ACTIVATE); jupyter_book build --all $(SRC_TEXT)

clean:
	rm -rf

