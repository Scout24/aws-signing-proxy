# aws-signing-proxy
Small reverse proxy that signs http requests to AWS services on the fly using IAM credentials. It can be used to be able to make http calls with regular http clients or browsers to the new AWS ElasticSearch service. So you don't need to rely on IP restrictions but on the more granular IAM permissions.

## Usage with Docker
- Build the docker file using `docker build -t aws-signing-proxy .`
- Configure the docker container via the following env vars:
  - `UPSTREAM_URL` ... The endpoint of your service (_REQUIRED_)
  - `UPSTREAM_SERVICE_NAME` ... The service name (_default=es_)
  - `UPSTREAM_REGION` ... The AWS region (_default=eu-west-1_)
- Login via `scloud account login [...]`
- Start the container via `docker-compose up` (add `-d` to run in daemon mode)
- In your browser call http://localhost:8080/

## Usage on localhost
- Configure the proxy via the following env vars:
  - `UPSTREAM_URL` ... The endpoint of your service (_REQUIRED_)
  - `UPSTREAM_SERVICE_NAME` ... The service name (_default=es_)
  - `UPSTREAM_REGION` ... The AWS region (_default=eu-west-1_)
- Login via `scloud account login [...]`
- Make sure Ruby is installed (`rbenv` is recommended)
- Run it with `bundle install --deployment && bundle exec ./proxy.rb`
- In your browser call http://localhost:8080/
