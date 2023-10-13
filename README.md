<a name="readme-top"></a>

<div align="center">

  <h1><b>Blog App</b></h1>

</div>

<!-- TABLE OF CONTENTS -->

## 📗 Table of Contents

- [📖 Recipe On Rails ](#-recipe-on-rails-)
  - [🛠 Built With ](#-built-with-)
    - [Tech Stack ](#tech-stack-)
    - [Key Features ](#key-features-)
  - [💻 Getting Started ](#-getting-started-)
    - [Prerequisites](#prerequisites)
    - [Setup](#setup)
    - [Install](#install)
    - [Usage](#usage)
  - [👥 Authors ](#-authors-)
  - [🔭 Future Features ](#-future-features-)
  - [🤝 Contributing ](#-contributing-)
  - [⭐️ Show your support ](#️-show-your-support-)
  - [🙏 Acknowledgments ](#-acknowledgments-)
  - [📝 License ](#-license-)

<!-- PROJECT DESCRIPTION -->

# 📖 Recipe On Rails <a name="about-project"></a>

**Recipe On Rails** Discover, cook, and enjoy delicious recipes with the Recipe App. Access a variety of easy-to-follow recipes, plan your meals, and create shopping lists. Whether you're a cooking enthusiast or just starting out, this app makes your culinary journey simple and enjoyable.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
  <summary>Server</summary>
    <li><a href="https://www.ruby-lang.org/en/">Ruby</a></li>
    <li><a href="https://rubyonrails.org/">Rails</a></li>
</details>
<details>
  <summary>Database</summary>
    <li><a href="https://www.postgresql.org/">Postgres</a></li>
</details>

<!-- Features -->

### Key Features <a name="key-features"></a>

- **Built using Ruby on Rails**

<p align="right">(<a href="#readme-top">back to top</a>)</p>



## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:

```
    ruby >= 3.2.0
    rails >= 7.0
    postgres >- 15.3
```

### Setup

Clone this repository to your desired folder:

```bash
  git clone https://github.com/ichsansandy/recipe-on-rails
```

You need to setup database for these project

```
  development = recipe_on_rails_development
  test        = recipe_on_rails_test
  production  = recipe_on_rails-production
```

or you can use your own database and change the ```config/database.yml```

```yml
  default: &default
    adapter: postgresql
    encoding: unicode
    pool: 5
    username: [your_username]
    password: [your_password]
    host: localhost

  development:
    <<: *default
    database: [your_database_for_development]

  test:
    <<: *default
    database: [your_database_for_test]

  production:
    <<: *default
    database: [your_database_for_production]
```

### Install

Install this project with:

```bash
  cd recipe-on-rails
  bundle install
```

it will install the required gemfile for running the project

### Usage

to use this project:

```ruby
   bin/rails server or
   rails server
```

it will run the the server on ```localhost:3000```

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## 👥 Authors <a name="author"></a>

👤 **Htet Wai Yan**

- GitHub: [@HtetWaiYan7191](https://github.com/HtetWaiYan7191)
- LinkedIn: [Htet Wai Yan](https://www.linkedin.com/in/htet-wai-yan19/)

👤 **Ichsan Sandy**

- GitHub: [@ichsansandy](https://github.com/ichsansandy)
- Twitter: [@1chsansandy](https://twitter.com/1chsansandy)
- LinkedIn: [Ichsan Sandy](https://linkedin.com/in/ichsans)


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

- **Add UI System**


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/ichsansandy/recipe-on-rails/issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

If you like this project you can share this project to your friend

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

I would like to thank microverse for this project

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>