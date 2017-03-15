FROM phusion/passenger-ruby23

ENV APP_ROOT /usr/src/DartsHoo

WORKDIR $APP_ROOT

# Enable nginx/passenger
RUN rm -f /etc/service/nginx/down

# Disable SSH
# Some discussion on this: https://news.ycombinator.com/item?id=7950326
RUN rm -rf /etc/service/sshd /etc/my_init.d/00_regen_ssh_host_keys.sh

# Install rails dependencies
RUN apt-get update
RUN apt-get -y install sqlite3 libsqlite3-dev

# Copy in app and config files
COPY nginx/rails-env.conf /etc/nginx/main.d/rails-env.conf
COPY nginx/webapp.conf /etc/nginx/sites-enabled/webapp.conf
COPY . $APP_ROOT

RUN bundle install
#RUN RAILS_ENV=production rake db:migrate

EXPOSE 3000
CMD ["/sbin/my_init"]
