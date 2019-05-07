# aws-signing-proxy
Small reverse proxy that signs http requests to AWS services on the fly using IAM credentials. It can be used to be able to make http calls with regular http clients or browsers to the new AWS ElasticSearch service. So you don't need to rely on IP restrictions but on the more granular IAM permissions.

## Usage with Docker
1. Copy `.env.template` to `.env` and adjust it
1. Build the docker file using `docker build -t aws-signing-proxy .`
1. Login via `scloud account login <account-name> <role>`
1. Start the container via `docker-compose up` (add `-d` to run in daemon mode)
1. In your browser call http://localhost:8080 (`:LISTEN_PORT`)

## Usage with your local ruby runtime
1. Copy `.env.template` to `.env` and adjust it
1. Login via `scloud account login <account-name> <role>`
1. Run it with `bundle install --deployment && bundle exec ./proxy.rb`
1. In your browser call http://localhost:8080 (`:LISTEN_PORT`)
