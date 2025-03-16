FROM python:3.9-slim

WORKDIR /docs

RUN apt-get update && apt-get install -y \
    libcairo2 \
    libpango-1.0-0 \
    libgdk-pixbuf2.0-0 \
    libffi-dev \
 && rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir mkdocs mkdocs-material "mkdocs-material[imaging]"

COPY . .

EXPOSE 8888

CMD ["mkdocs", "serve", "-a", "0.0.0.0:8888"]