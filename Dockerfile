FROM debian:latest
ARG FUNCTION_DIR="/function"

RUN apt update && apt upgrade
RUN apt install -y pandoc texlive python3 python3-pip

RUN mkdir -p ${FUNCTION_DIR} 

WORKDIR ${FUNCTION_DIR}

RUN pip install --target ${FUNCTION_DIR} awslambdaric
COPY . ${FUNCTION_DIR}

ENTRYPOINT [ "/usr/bin/python3", "-m", "awslambdaric" ]
CMD [ "function.handler" ]

