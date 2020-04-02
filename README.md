# Marvel API

The objective of this application was to create a rails API including backend tests.

# Setup

1. Clone the repo.
2. `cd /marvel-api`
3. `bundle install`
4. `rails s`
5. `rake db:create`
6. `rake db:migrate`
7. `rake db:seed`

# Run API Tests

`cucumber -p localhost -t @characters`

(run `rake db:drop db:create db:migrate db:seed` to reset database)

![Alt Text](https://media1.tenor.com/images/ea7341c2a9e1faf6c1ffff361e683cdc/tenor.gif?itemid=4947851)
