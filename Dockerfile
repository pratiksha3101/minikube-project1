# Use the official golang image as the base image
FROM golang:1.17-alpine

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .

# Build the Go application
RUN go build -o main .

# Expose port 8080 to the outside world
EXPOSE 8080

# Command to run the executable
CMD ["./main"]

# Build the Docker image
# docker build -t minikube-project1 .

# Run the Docker container
# docker run -p 8080:8080 minikube-project1


