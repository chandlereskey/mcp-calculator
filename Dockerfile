# Use the official lightweight Python 3.14 image
FROM python:3.14-slim

# Establish internal container context location
WORKDIR /app

# Copy dependency configuration file
COPY requirements.txt .

# Install dependencies discarding package caches
RUN pip install --no-cache-dir -r requirements.txt

# Copy only your mathematical server logic file
COPY app.py .

# Open the network port assigned to FastMCP 
EXPOSE 8000

# Trigger the Python runtime directly
CMD ["python", "app.py"]
