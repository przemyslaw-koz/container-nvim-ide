FROM ubuntu:latest

RUN apt-get update && apt-get install -y neovim zsh git curl

#set zsh as default shell
RUN chsh -s /usr/bin/zsh

#copy neovim config
COPY neovim/ /home/dev/.config

#copy zsh config
COPY zsh/ /home/dev/.zshrc

#set workdir
WORKDIR /home/dev/workspace

#setting user
RUN useradd -ms /bin/zsh dev
USER dev

CMD ["zsh"]
