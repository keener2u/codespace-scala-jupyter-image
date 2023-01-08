FROM mcr.microsoft.com/devcontainers/universal:2.1.1

RUN curl -Lo coursier https://git.io/coursier-cli
RUN chmod +x coursier
RUN ./coursier launch --fork almond --scala 2.12.17 -- --install
RUN rm -f coursier
