FROM python:3.11-slim-buster  # Or a specific Python version you prefer

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8000  # Default FastAPI port, change if needed

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]