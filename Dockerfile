FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

RUN ls -la /app/

EXPOSE 8000

CMD python -m uvicorn Server:app --host 0.0.0.0 --port ${PORT:-8000}
