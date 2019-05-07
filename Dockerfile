FROM sickp/alpine-ruby

WORKDIR /app

COPY . /app
RUN bundle install --deployment

EXPOSE 8080

CMD ["bundle", "exec", "./proxy.rb"]
