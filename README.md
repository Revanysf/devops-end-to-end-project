# End-to-End DevOps Portfolio Project 🚀

A fully containerized, automated, and cloud-deployed Python Flask web application. This project demonstrates a production-ready DevOps lifecycle implementing CI/CD pipelines, containerization, and automated cloud deployment.

## 🔗 Live Demo
Experience the live application here: **[https://my-devops-flask-app.onrender.com](https://my-devops-flask-app.onrender.com)**

---

## 🛠️ Tech Stack & Tools
* **Backend Framework:** Python Flask
* **Version Control:** Git & GitHub
* **Containerization:** Docker & Docker Hub
* **CI/CD Automation:** GitHub Actions
* **Cloud Hosting:** Render Cloud Platform

---

## 🏗️ Project Architecture & Workflow
The development and deployment workflow follows modern DevOps best practices:

1. **Local Development:** Application built using Python Flask and structured using a strict Git branching model (`develop` branch).
2. **Containerization:** App is containerized using a lightweight `Dockerfile` based on `python:3.9-slim`.
3. **CI/CD Pipeline (GitHub Actions):** Every `git push` to the `develop` branch automatically triggers a GitHub Actions workflow.
4. **Image Registry:** The pipeline securely authenticates using GitHub Secrets, builds the production Docker image, and pushes it to Docker Hub.
5. **Continuous Deployment:** Render Cloud Platform detects changes, pulls the latest Docker image, and deploys it automatically to live production.

---

## 🚀 Local Setup & Installation

To run this project locally, make sure you have **Docker Desktop** installed, then execute the following commands in your terminal:

```bash
# Clone the repository
git clone [https://github.com/Revanysf/devops-end-to-end-project.git](https://github.com/Revanysf/devops-end-to-end-project.git)

# Navigate into the project directory
cd devops-end-to-end-project

# Switch to the development branch
git checkout develop

# Build the Docker image
docker build -t devops-app:v1 .

# Run the container locally (Port 5000)
docker run -p 5000:5000 devops-app:v1