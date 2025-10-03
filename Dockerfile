FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# default port inside container
ENV PORT=3000
EXPOSE 3000

# Use gunicorn to serve the Flask app (module is app:app)
# (shell form allows $PORT expansion if you prefer dynamic binding)
CMD ["gunicorn", "--bind", "0.0.0.0:3000", "app:app"]
