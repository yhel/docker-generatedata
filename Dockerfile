FROM tutum/apache-php
RUN apt-get update && apt-get install -yq git
RUN rm -rf /var/lib/apt/lists/*
RUN rm -fr /app
RUN git clone --branch 3.2.1 https://github.com/benkeen/generatedata.git /app
RUN composer install
