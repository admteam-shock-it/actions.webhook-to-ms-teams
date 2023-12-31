FROM python:3-slim-bookworm

WORKDIR /app

COPY requirements.txt ./requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY entrypoint.sh ./entrypoint.sh
RUN chmod 755 ./entrypoint.sh

ENTRYPOINT ["/app/entrypoint.sh"]