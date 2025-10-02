# Use an official lightweight Python image as the base
FROM python:3.10-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the dependencies file into the container
COPY requirements.txt .

# Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code into the container
COPY . .

# Expose port 5000 to the outside world
EXPOSE 3000

# Command to run the application when the container starts
CMD ["gunicorn", "--bind", "0.0.0.0:8181", "app:app"]