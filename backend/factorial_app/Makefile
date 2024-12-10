# Makefile for a Java project with Maven

# Project directories
SRC_DIR := src
BUILD_DIR := target

# Default target
.PHONY: all build run test clean package install help

all: clean build run

# Build the project (clean and install)
build:
	@echo "Building the project..."
	mvn clean install

# Run the Spring Boot application
run:
	@echo "Running the Spring Boot application..."
	mvn spring-boot:run

# Run unit tests
test:
	@echo "Running tests..."
	mvn test

# Clean the build artifacts
clean:
	@echo "Cleaning up build files..."
	mvn clean

# Package the application (create a jar file)
package:
	@echo "Packaging the application..."
	mvn package

# Install dependencies
install:
	@echo "Installing dependencies..."
	mvn install

# Show help
help:
	@echo "Makefile for a Java project"
	@echo "Usage:"
	@echo "  make build      Build the project"
	@echo "  make run        Run the Spring Boot application"
	@echo "  make test       Run unit tests"
	@echo "  make clean      Clean build artifacts"
	@echo "  make package    Package the application into a JAR"
	@echo "  make install    Install dependencies"