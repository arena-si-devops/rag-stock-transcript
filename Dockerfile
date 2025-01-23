FROM python:3.14.0a1-slim

WORKDIR /app

# Install Poetry
RUN pip install --upgrade pip
RUN pip install poetry

# Copy project files
COPY pyproject.toml poetry.lock ./
COPY . .

# Install dependencies
RUN poetry config virtualenvs.create false
RUN poetry install --no-interaction

# Set the entrypoint
ENTRYPOINT ["poetry", "run", "python", "src/ragtranscript/main.py"]