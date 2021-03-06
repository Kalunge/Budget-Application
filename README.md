# Budget App

![Microverse](https://img.shields.io/badge/Microverse-blueviolet)

> A mobile web application where you can manage your budget

A mobile web application where you can manage your budget: you have a list of transactions associated with a category, so that you can see how much money you spent and on what.

Home page | Details page
----------| ----------------
![Screenshot from 2022-01-06 09-39-37](https://user-images.githubusercontent.com/50773868/148354617-5e73f273-22ae-40af-8841-d62fae605940.png)| ![Screenshot from 2022-01-05 16-37-53](https://user-images.githubusercontent.com/50773868/148354639-6c612baf-cbb4-4a6c-a540-0b8302bdaeb5.png)







## Built With
- Ruby on Rails
- PostgreSQL
- Bootstrap 

## Live Demo
[live](https://bajeti-app.herokuapp.com/)

## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

- [Ruby](https://www.ruby-lang.org/en/)
- [Rails](https://gorails.com/)

### Setup

- Make sure you have Ruby on Rails set up properly on your computer
- Clone or download this repo on your machine

```sh
git clone git@github.com:Kalunge/Budget-Application.git
~ cd Budget-Application

```

### Development Database

```sh
# Go Postgres shell user
 sudo -i -u postgres psql
```

```sh
 - rake db:reset
```

```sh
#To create a test user
to test the app use email: "doe@mail.com", password: "qwerty" without the quotes

```

### Install

```sh
bundle install
```

### Run

```sh
rails s
```

#### If you get an error run

```sh
bin/rails webpacker:install
and now run  `rails s`
```

### Test

```sh
rspec spec/
```

## Authors

👤 **Titus Muthomi**

- GitHub: [@Kalunge](https://github.com/Kalunge)
- Twitter: [@titus_muthomi](https://twitter.com/titus_muthomi)
- LinkedIn: [Titus Muthomi](https://www.linkedin.com/in/muthomi-titus-295024181/)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page]([../../issues/](https://github.com/Kalunge/Budget-Application/issues)).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Microverse
- Original design idea by Gregoire Vella on [Behance](https://www.behance.net/gregoirevella).

## License

[MIT](./LICENSE)
