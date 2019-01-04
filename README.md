# WebGoat-dockerize

This is dockerized version of WebGoat server. It is VERY vulnerable server 
used for security training so its wise to start it in container.

Runs by default in port 8080.

Run with:
`docker run --rm -p 8080:8080 odeporkka/webgoat-dockerize`

Change first port if you wanna access it on other port on your host.
(You can change default port/address too in Dockerfile CMD.
More info at WebGoat git pages.)

Navigate to [http://localhost:8080/WebGoat](http://localhost:8080/WebGoat) after starting to access web app.
