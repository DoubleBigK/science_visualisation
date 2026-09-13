SHELL := /bin/bash

PROJECT_NAME := $(notdir $(CURDIR))
KERNEL_NAME := $(shell echo "$(PROJECT_NAME)-venv" | tr ' ' '_' | tr '[:upper:]' '[:lower:]')

.PHONY: install

install:
	@echo "[1/7] Creating virtual environment (.venv)..."
	python -m venv .venv && \
		echo "[2/7] Activating virtual environment..." && \
		source .venv/Scripts/activate && \
		echo "[3/7] Upgrading pip, setuptools, wheel..." && \
		python -m pip install --upgrade pip setuptools wheel && \
		echo "[4/7] Installing dependencies from requirements.txt..." && \
		python -m pip install -r requirements.txt && \
		echo "[5/7] Installing project in editable mode..." && \
		python -m pip install -e . && \
		echo "[6/7] Installing ipykernel..." && \
		python -m pip install ipykernel && \
		echo "[7/7] Registering Jupyter kernel..." && \
		python -m ipykernel install --user --name "$(KERNEL_NAME)" --display-name "$(PROJECT_NAME)"