# Use an official lightweight Python image as the base
FROM python:3.9-slim

# Set a working directory inside the container
WORKDIR /app

# Copy only requirements first to leverage Docker cache
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code into the image
COPY . .

# Document that the container exposes port 5000
EXPOSE 5000

# Default command to run the app
CMD ["python", "app.py"]

