# Use the official Swift image
FROM swift:6.0

# Install libsodium
RUN apt-get update && apt-get install -y \
    libsodium-dev \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory inside the container
WORKDIR /app

# Copy the entire project into the container
COPY . .

# Clean up any existing build artifacts
RUN rm -rf .build

# Resolve dependencies and build the project
RUN swift package resolve
RUN swift build

# Command to run tests
CMD ["swift", "test"]
