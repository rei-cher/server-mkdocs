FROM python:3.9-slim

WORKDIR /docs

RUN pip install --no-cache-dir mkdocs mkdocs-material

COPY . .

EXPOSE 8888

CMD ["mkdocs", "serve", "-a", "0.0.0.0:8888"]