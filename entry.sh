# Workdir
cd /app

# Project dependencies
mix deps.get
mix deps.compile

# Spin up server
mix phx.server
