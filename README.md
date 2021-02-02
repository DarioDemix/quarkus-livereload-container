# A simple demonstration of Quarkus livereload on a Docker container

## Building the application

Launch the Maven build on the checked out sources of this demo:

> ./mvnw install

### Live coding with Quarkus

The Maven Quarkus plugin provides a development mode that supports
live coding. To try this out:

> ./mvnw quarkus:dev

This command will leave Quarkus running in the foreground listening on port 8080.

1. Visit the default endpoint: [http://127.0.0.1:8080](http://127.0.0.1:8080).
    - Make a simple change to [src/main/resources/META-INF/resources/index.html](src/main/resources/META-INF/resources/index.html) file.
    - Refresh the browser to see the updated page.
2. Visit the `/hello` endpoint: [http://127.0.0.1:8080/hello](http://127.0.0.1:8080/hello)
    - Update the response in [src/main/java/org/acme/quickstart/GreetingResource.java](src/main/java/org/acme/quickstart/GreetingResource.java). Replace `hello` with `hello there` in the `hello()` method.
    - Refresh the browser. You should now see `hello there`.
    - Undo the change, so the method returns `hello` again.
    - Refresh the browser. You should now see `hello`.
