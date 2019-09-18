# Marvel API

The objective of this application was to create a rails API with backend tests.

# Setting up Locally

1. Clone the repo.
2. `cd /marvel-api`.
3. `bundle install`.
4. `rails s`.
5. `rake db:create` `rake db:migrate` to create and migrate your local database.
6. `rake db:seed` to create the characters.
7. Navigate to `localhost:3000` to visit and view site.

**To run api Tests:**
`cucumber -p localhost -t @characters`

![Alt Text](https://media1.tenor.com/images/ea7341c2a9e1faf6c1ffff361e683cdc/tenor.gif?itemid=4947851)
