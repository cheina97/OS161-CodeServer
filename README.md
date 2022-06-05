# OS161-CodeServer

This is a docker container based on [OS161-Docker](https://github.com/cheina97/OS161-Docker), that integrate OS-161 with [CodeServer](https://github.com/coder/code-server) (which is a web version of the famous [VS-code](https://code.visualstudio.com/)) and [os161vscode](https://github.com/cheina97/os161vscode) (which allow you to use **debug**, **compile** and **run** OS161 using the **VS-code** or **CodeServer** interface).

This allows you to run a complete **development environment** which **works out of the box** with just one simple command.

## How to run the container

Install [docker](https://docs.docker.com/engine/install/ubuntu/) and run:

```docker run -d -p 5000:5000 ghcr/cheina97/os161-codeserver``` and then open ```localhost:5000``` in your browser.

## How to delete the container

List all your running containers with:

`docker container ls`

Delete a container with:

`docker container rm  <container_id>`

## How to build

If you want you can build your own image running:

```docker build -t os161-codeserver .``` (be prepared, it takes a long time).

## Useful links

- https://github.com/cheina97/os161vscode - Explain how to use **OS161 tasks** in **vscode** to simplify your job.
- https://docs.docker.com/engine/ - How to use **docker**'s advanced features.
- https://github.com/jesseduffield/lazydocker - **TUI** tool to manage easily **docker** without **CLI**.