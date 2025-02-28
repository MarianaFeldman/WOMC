# Use the official rocm/jax image from Docker Hub
FROM rocm/jax:latest

# Set the working directory in the container
WORKDIR /app

# Copy the entire project directory into the container
COPY . /app/

# Create output directory
RUN mkdir -p /app/output

# Activate the virtual environment and install the necessary packages
RUN pip install -r /app/requirements.txt

# Set the entrypoint to use the virtual environment's Python
#ENTRYPOINT ["python3", "/app/main.py"]
#ENTRYPOINT ["python3", "/app/test_digits.py"]
ENTRYPOINT ["python3", "/app/test_mnist.py"]
#ENTRYPOINT ["python3", "/app/test_gol.py"]

CMD []

# Optionally, you can declare the volume
#VOLUME ["/app/output"]



