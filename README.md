# Manik Calculator - Java Web Application

Manik Calculator is a Java-based web application that allows users to perform basic arithmetic operations such as addition, subtraction, multiplication, and division. The application features a user-friendly GUI and is built using Spring MVC.

## Features

- Perform addition, subtraction, multiplication, and division operations
- User-friendly web interface
- Error handling for invalid inputs
- Spring MVC framework
- Maven for build automation
- Docker support for containerization
- JMeter tests for load testing
- Smoke testing script
- No IDE required, fully configured for CLI usage

## Prerequisites

- Java Development Kit (JDK) installed on your system
- Maven installed on your system
- Docker installed on your system

## Installation

1. Clone the repository:

```
git clone https://github.com/manikcloud/manik-calculator.git
```

Navigate to the project directory:

```
cd manik-calculator
```

Build the project using Maven:
```
mvn clean install

```
Build the Docker image using Maven:

```
mvn clean docker:build
```

Run the Docker container:

```
docker run -d -p 8080:8080 --name manik-calculator-container manik-calculator

```

Access the application in your browser at http://localhost:8080.

## Testing
### Smoke Test
A smoke test script is provided in the project. To run the smoke test, execute the following command in the project root directory:

```
./smoke-test.sh
```

### JMeter Load Test
A JMeter load test plan is provided in the jmeter-tests directory. To run the load test, open JMeter, load the calculator_load_test.jmx file, and execute the test plan.

# Jenkins Integration

This section describes how to set up a Jenkins job to build, test, and deploy the manik-calculator project.

## Prerequisites

- Jenkins installed on your system or available through a remote server
- JDK and Maven installed on the Jenkins build agent
- Docker installed on the Jenkins build agent, if you plan to build and deploy Docker images

## Installing Required Plugins

Before creating a Jenkins job, ensure that the following plugins are installed:

1. Maven Integration plugin
2. Git plugin
3. JaCoCo plugin
4. Clover plugin (optional)
5. Docker Pipeline plugin


To install the plugins, go to `Manage Jenkins` > `Manage Plugins` > `Available` tab, search for the plugins, select them, and click `Install without restart`.

## Creating a Jenkins Job

1. In the Jenkins dashboard, click on `New Item` in the top-left corner.
2. Enter a name for the job, e.g., `manik-calculator-job`, choose `Freestyle project`, and click `OK`.
3. In the `Source Code Management` section, select `Git` and enter the repository URL. Configure the credentials if required.
4. In the `Build Triggers` section, choose the desired build trigger, e.g., `Poll SCM` or `GitHub hook trigger for GITScm polling`.
5. In the `Build` section, click `Add build step` and select `Invoke top-level Maven targets`. Enter the Maven goals as `clean install`.
6. In the `Post-build Actions` section, add the following actions:
   - Click `Add post-build action` and choose `Record JaCoCo coverage report`. Leave the default settings.
   - (Optional) Click `Add post-build action` and choose `Clover Coverage Report`. Leave the default settings.
   - If you want to build and deploy the Docker image, click `Add post-build action` and choose `Docker Build and Publish`. Configure the repository, Dockerfile location, and other settings as needed.
7. Click `Save`.

Now, you can manually trigger the job or wait for the configured trigger to start the build. Jenkins will build, test, and deploy the manik-calculator project based on the provided configuration.

## Monitoring the Jenkins Job

To monitor the progress and results of the Jenkins job:

1. In the Jenkins dashboard, click on the job name, e.g., `manik-calculator-job`.
2. In the `Build History` section, click on the build number to see its details.
3. On the build details page, you can view the console output, test results, code coverage reports, and other information related to the build.
