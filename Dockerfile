# 1 Base image (OS)

FROM eclipse-temurin:21-jdk-jammy

# 2 working directory for the app
WORKDIR /app


# 3 copy the code from your HOST to your Container (working directory)

COPY src/Main.java /app/Main.java

COPY quotes.txt /app/quotes.txt

# 4 Run the commands to install libs or to compile code

RUN javac Main.java

# 5 Expose the port

EXPOSE 8000

# 6 Serve the app / keep it running (ENTRYPOINT cannot be overridden by default)

CMD ["java","Main"]
