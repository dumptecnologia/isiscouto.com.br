#!/bin/bash
docker run -ti --rm \
  -v /mnt:/mnt \
  -v /home/$USER:/home/$USER \
  -w $PWD/../ \
  --dns 8.8.8.8 \
  -p 4000:4000 \
  -p 35729:35729 \
  jekyll/builder:3.8 \
  /bin/bash -c "bundle install && bundle exec jekyll serve --host 0.0.0.0 --livereload"
