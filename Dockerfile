# Use OpenJDK 19 as a parent image
FROM openjdk:19-jdk-alpine

# explicitly creates a directory (/usr/src/your_workdir) in the Docker image below command.
# This ensures that the directory exists before setting it as the working directory in the subsequent command.
RUN mkdir -p /usr/src/your_workdir

# Set the working directory in the container to /usr/src/your_workdir
WORKDIR /usr/src/your_workdir

# Copy only the HelloWorld.java into the container at /usr/src/your_workdir
COPY HelloWorld.java ./

# Compile the Java program
RUN javac HelloWorld.java

# Run the program when the container launches
CMD java HelloWorld