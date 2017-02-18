FROM nginx:1.11

RUN apt-get update && apt-get install -y curl wget
RUN curl -f -L -sS https://ngxpagespeed.com/install | sed -e 's/\<sudo\>//g' | sed -e 's/\<apt-get install\>/apt-get install -y/g' > script && \
    chmod 775 script && \
    ./script --nginx-version latest

