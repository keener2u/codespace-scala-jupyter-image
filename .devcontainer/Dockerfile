FROM mcr.microsoft.com/devcontainers/universal:2.1.1

user codespace
RUN ln -sfn /usr/local/sdkman/candidates/java/11.0.17-ms /usr/local/sdkman/candidates/java/current
RUN curl -Lo /home/codespace/cs.gz "https://github.com/coursier/launchers/raw/master/cs-$(uname -m)-pc-linux-static.gz"
RUN gzip -d /home/codespace/cs.gz
RUN chmod +x /home/codespace/cs
RUN /home/codespace/cs setup --env --jvm 11 --apps sbt-launcher,ammonite,scala:2.12.17 --install-dir /home/codespace/.local/bin
RUN /home/codespace/cs launch --fork almond --scala 2.12.17 -- --install