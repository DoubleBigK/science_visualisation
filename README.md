# Project Template

This repository is a **base template** for new Python projects.  
Use it to quickly start with a clean structure, virtualenv targets, and basic tooling.

---

## Create your own repo (GitHub UI)

1. Open **this template repository** on GitHub.
2. Click **Use this template** → **Create a new repository**.
3. Enter your **repository name** (your project’s name).
4. Choose visibility (public/private) and click **Create repository**.

---

## Set up locally

    # 1. Clone repo into your project dir
    git clone git@github.com:DoubleBigK/<your-project>.git

    # 2. Go there
    cd <your-project>

    # 3. Create venv, install dependencies and register a Jupyter kernel for this project
    make install

### What `make install` does

The `make install` command:

1. creates a virtual environment in `.venv/`,
2. activates it,
3. upgrades `pip`, `setuptools` and `wheel`,
4. installs packages from `requirements.txt`,
5. installs your project with `pip install .`,
6. registers a Jupyter kernel named `<project-name>-venv`.

Re-run `make install` whenever you:

- change `requirements.txt`, or  
- significantly modify the project structure and want a clean environment.

---

## Configure `pyproject.toml`

After creating your project, update `pyproject.toml` to match your setup, for example:

- set `[project].name` to your project/package name,
- set `[project].description` to a short description of your project,
- adjust `[tool.setuptools.packages.find].include` to your actual package name  
  (e.g. replace `PROJECT_PACKAGE` with something like `my_project`).

If you are using placeholders like `PROJECT_NAME` / `PROJECT_PACKAGE`, replace them with your real names.

---

## Change README

After scaffolding your project, replace this README with your own project-specific documentation:

- what the project does,
- how to run it (CLI / Streamlit / scripts),
- how to run tests, linting, etc.
