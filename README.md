# README

## Requirements

- Required Ruby version is 2.7.1
- The project uses a >PostgreSQL9.6 database

## Setup

1. Git clone project.
2. Install gem bundler:

    ```shell script
    gem install bundler
    ```

3. Run bundler:

    ```shell script
    bundle install
    ```

4. Create database.yml:

    ```shell script
    cp config/database.yml.example config/database.yml
    ```

5. Create database:

    ```shell script
    rails db:create
    ```

6. Run migrations

    ```shell script
    rails db:migrate
    ```

## Run App

```shell script
  rails s
```
