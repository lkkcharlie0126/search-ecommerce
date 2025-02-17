# Use official Python image
FROM pytorch/pytorch:2.4.1-cuda12.4-cudnn9-devel

# Set the working directory
WORKDIR /app

# Copy and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY . .

# Expose the FastAPI port (if used)
EXPOSE 8000

# Default command to keep the container running
CMD ["tail", "-f", "/dev/null"]

