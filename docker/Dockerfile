FROM ubuntu

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update

# install homebrew
RUN apt-get install -y build-essential procps curl file git sudo
RUN NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
COPY Brewfile /tmp/
RUN eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)" && brew bundle --file /tmp/Brewfile

# config root
RUN passwd -d root

# add group, user
RUN groupadd -g 1000 -r vm_users \
  && useradd -u 1000 -r -b / -g vm_users -g sudo vm_user

# config vm_user
RUN passwd -d vm_user
RUN eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)" && chsh --shell $(which zsh) vm_user
WORKDIR /vm_user
RUN chown vm_user:vm_users /vm_user
WORKDIR /vm_user/dotfiles
COPY docker/initialize.sh /tmp/
RUN /tmp/initialize.sh

EXPOSE 22
USER vm_user
CMD eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)" && zsh
