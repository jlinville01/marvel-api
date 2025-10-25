# Marvel API

## Setup

1. **Clone the repository**
   ```bash
   git clone https://github.com/jlinville01/marvel-api.git
   cd marvel-api
   ```

2. **Install dependencies**
   ```bash
   bundle install
   ```

3. **Start the development server**
   ```bash
   rails s
   ```
   
4. **Change directories**
   ```bash
   cd qa
   ```
   
5. **Setup the DB**
   ```bash
   rake db:create
   rake db:migrate
   rake db:seed
   ```
   
6. Run API Tests
   ```bash
   cucumber -p localhost -t @characters
   ```

(run `rake db:drop db:create db:migrate db:seed` to reset database)

![Alt Text](https://media1.tenor.com/images/ea7341c2a9e1faf6c1ffff361e683cdc/tenor.gif?itemid=4947851)
