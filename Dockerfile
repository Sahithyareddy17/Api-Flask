FROM python:3.9-slim

# Set the working directory within the container
WORKDIR /app

# Copy dependency file
COPY requirements.txt /app/requirements.txt

# Upgrade pip and install dependencies
RUN pip install --no-cache-dir -r /app/requirements.txt

# Copy the rest of the application
Copy . /app

# Run the application
CMD ["python", "app.py"]

# Expose port 5000 for the Flask application
EXPOSE 5000

