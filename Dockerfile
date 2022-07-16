# Devlopment image

FROM elixir
ENV MIX_HOME=/opt/mix


# Install requirements
RUN apt-get update
RUN apt-get install inotify-tools -y
RUN mix local.hex --force
RUN mix local.rebar --force
RUN mix archive.install hex phx_new

COPY ./entry.sh /entry.sh
RUN chmod +x /entry.sh
CMD /entry.sh

