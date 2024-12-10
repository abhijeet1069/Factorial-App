# Orchestrator Makefile for both frontend and backend

# Define subdirectory variables
FRONTEND_DIR := frontend
BACKEND_DIR := backend/factorial_app

# Define targets that will call frontend and backend Makefiles
.PHONY: all build run clean build-frontend build-backend run-frontend run-backend clean-frontend clean-backend

all: clean build run

# Build both frontend and backend
build: build-backend

run: run-backend

clean: clean-backend

# Build frontend
build-frontend:
	@echo "Building frontend..."
	make -C $(FRONTEND_DIR) build

# Build backend
build-backend:
	@echo "Building backend..."
	make -C $(BACKEND_DIR) build

# Run both frontend and backend
run-frontend:
	@echo "Running frontend..."
	make -C $(FRONTEND_DIR) run

run-backend:
	@echo "Running backend..."
	make -C $(BACKEND_DIR) run

# Clean both frontend
clean-frontend:
	@echo "Cleaning frontend..."
	make -C $(FRONTEND_DIR) clean

# Clean both backend
clean-backend:
	@echo "Cleaning backend..."
	make -C $(BACKEND_DIR) clean