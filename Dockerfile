# Use the official Go image as the base image
FROM golang:1.20

# Set the working directory inside the container
WORKDIR /app

# Copy the Go application source code to the container's working directory
COPY . .

# Build the Go application inside the container
RUN go build -o app .

# Expose the port the service will listen on
EXPOSE 8080

# Command to run the Go application when the container starts
CMD ["./app"]
