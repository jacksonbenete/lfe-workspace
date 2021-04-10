# docker build -t jacksonbenete/lfe-workspace .
# docker run -dit --name lfew jacksonbenete/lfe-workspace
FROM lfex/lfe

# install utils
RUN apk add bash bash-doc bash-completion
RUN apk add util-linux pciutils usbutils coreutils binutils findutils grep
RUN apk add git
RUN apk add emacs

# env variables
ENV TERM xterm-256color

# configure emacs
RUN git clone https://github.com/jacksonbenete/.emacs.d.git ~/.emacs.d
