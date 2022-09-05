FROM ubuntu
RUN apt update -y
RUN mkdir doc2
RUN touch file2
RUN apt install apache2 -y
RUN apt install git -y
RUN mkdir doc3
CMD "echo", "build successfully"
