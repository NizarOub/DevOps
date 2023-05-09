# Use a PHP base image
FROM php:7.4-cli


WORKDIR /app

# Install Git and Composer
RUN apt-get update && apt-get install -y git \
    && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Set the working directory


# Clone the Git repository
RUN git clone https://github.com/NizarOub/DevOps.git .

ENV COMPOSER_ALLOW_SUPERUSER 1


# Install any required PHP dependencies
RUN composer install --no-dev

# Expose port 8000 (if needed)
EXPOSE 8000

# Start the PHP server
CMD [ "php", "-S", "0.0.0.0:8000" ]
