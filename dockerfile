# Use the official Golang image to create a build artifact.
# This is based on Debian and sets the GOPATH to /go.
FROM golang:1.22 as builder

# Set the Current Working Directory inside the container
WORKDIR /app

# Copy everything from the current directory to the PWD (Present Working Directory) inside the container
COPY . .

# Using go mod with go 1.11
# Download all the dependencies that are necessary to build the project
RUN go mod download

# Compile the binary, we can use the -o flag to name the binary
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o taskmanager .

# Expose port 8012 to the outside world
EXPOSE 8012

# Command to run the executable
CMD ["./taskmanager"]

