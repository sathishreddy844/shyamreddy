FROM ubuntu
RUN apt update -y
RUN mkdir doc2
RUN touch file2
RUN apt install apache2 -y
CMD "echo", "build successfully"
