FROM michalhecko/e2xvfb-openatv:7.5

RUN apt update && apt install -y \
    bash-completion command-not-found psmisc htop vim mc \
    python3-venv xvfb libc-bin

# TODO: Need to figure out how to run enigma2 binary under debugpy
#RUN rm -f /usr/lib/python3.*/EXTERNALLY-MANAGED || true && \
#    pip3 install --no-cache-dir debugpy
# "Debugpy installed - run: python -m debugpy --listen 0.0.0.0:5678 --wait-for-client /usr/bin/enigma2"
# EXPOSE 5678

# do nothing
CMD ["tail", "-f", "/dev/null"]
