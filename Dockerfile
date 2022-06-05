FROM ubuntu:18.04

#Build OS161

ENV DEBIAN_FRONTEND=noninteractive

COPY ./install.sh ./install.sh
RUN chmod 777 install.sh && \
    ./install.sh && \
    rm install.sh

USER os161user

COPY --chown=os161user ./preliminary.sh ./preliminary.sh
RUN chmod 777 preliminary.sh && \
    ./preliminary.sh

WORKDIR /home/os161user/os161

COPY --chown=os161user ./binutils.sh ./binutils.sh
RUN chmod 777 binutils.sh && \
    ./binutils.sh

COPY --chown=os161user ./gcc.sh ./gcc.sh
RUN chmod 777 gcc.sh && \
    ./gcc.sh

COPY --chown=os161user ./gdb-7.8+os161-2.1 ./gdb-7.8+os161-2.1
COPY --chown=os161user ./gdb.sh ./gdb.sh
RUN chmod 777 gdb.sh && \
    ./gdb.sh

COPY --chown=os161user ./sys161-2.0.8 ./sys161-2.0.8
COPY --chown=os161user ./system161.sh ./system161.sh
RUN chmod 777 system161.sh && \
    ./system161.sh

COPY --chown=os161user ./generate-symlinks.sh ./generate-symlinks.sh
RUN chmod 777 generate-symlinks.sh && \
    ./generate-symlinks.sh

COPY --chown=os161user ./os161-base.sh ./os161-base.sh
RUN chmod 777 os161-base.sh && \
    ./os161-base.sh

COPY --chown=os161user ./first-build.sh ./first-build.sh
RUN chmod 777 first-build.sh && \
    ./first-build.sh

COPY --chown=os161user ./.gdbinit /home/os161user/os161/root/.gdbinit
RUN echo 'set auto-load safe-path /' > /home/os161user/.gdbinit


USER root

RUN rm binutils.sh && \
    rm gcc.sh && \
    rm gdb.sh && \
    rm system161.sh && \
    rm generate-symlinks.sh && \
    rm os161-base.sh

#Install vscode

ENV SUDO_FORCE_REMOVE yes
ENV CPPTOOLS_VERSION=1.7.1
ENV CODESERVER_VERSION=4.1.0

RUN apt-get update &&\
    apt-get install -y curl git &&\ 
    curl -fsSL https://code-server.dev/install.sh | sh -s -- --version=${CODESERVER_VERSION} &&\
    apt-get clean

COPY --chown=os161user ./config.sh config.sh
RUN chmod 777 config.sh && \
    ./config.sh

COPY --chown=os161user ./c-cpp/settings.json /config/data/User/settings.json

RUN apt-get update && apt-get install -y build-essential cmake gdb && \
    apt-get clean

ADD "https://github.com/microsoft/vscode-cpptools/releases/download/${CPPTOOLS_VERSION}/cpptools-linux.vsix" "./cpptools-linux.vsix"

RUN chown -R os161user:os161user /config && \
    chown os161user:os161user cpptools-linux.vsix && \
    chmod 777 cpptools-linux.vsix

COPY --chown=os161user ./vscode /home/os161user/os161/os161-base-2.0.3/kern/.vscode
RUN chmod 777 -R /home/os161user/os161/os161-base-2.0.3/kern/.vscode

COPY --chown=os161user ./start.sh vscode-start.sh
RUN chmod 777 vscode-start.sh 

USER os161user
RUN code-server --extensions-dir /config/extensions --install-extension cpptools-linux.vsix && \
    code-server --extensions-dir /config/extensions --install-extension formulahendry.code-runner

ENTRYPOINT [ "./vscode-start.sh" ]