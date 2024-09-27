FROM python:3.11-slim

# Set the working directory in the container
WORKDIR /python-polars-the-definitive-guide

# RUN apt-get update && apt-get install -y \
#     gcc \
#     python3-dev \
#     && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Command to run when the container starts
# CMD ["sh", "-c", "cd /python-polars-the-definitive-guide && jupyter nbconvert *.ipynb --execute --to html --output /tmp/nbconvert/"]
