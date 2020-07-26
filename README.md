## Micro-reddit (Building and Testing Models)

Let’s build ``Reddit``. Well, maybe a very junior version of it called ``micro-reddit``. This project involves building and testing of the data structures necessary to support link submissions and commenting.

### Built with:

* Ruby 2.4.0
* Rails 5.2.3
* RSpec (test suite)
* SQLite

### Installation

###### Database initialization
in your terminal ```rake db:migrate db:test:prepare```

###### How to run the test suite for models

in your terminal run ``` rspec spec/model```

### Usage
You can interact with this app in your terminal

Run ```rails console```

Enable the Hirb gem prettifier in your rails console

type ```Hirb.enable```

### Contributor(s)

[Victor Okeugo](https://angel.co/u/victorokeugo/)

- Github: [@johnsonsirv](https://github.com/johnsonsirv)
- Twitter: [@vokeugo](https://twitter.com/@vokeugo/)
- Email: [okeugo.victor.c@gmail.com]()

### How to contribute
1. Fork it (https://github.com/johnsonsirv/micro-reddit/fork)
2. Create your feature branch (git checkout -b feature/[choose-a-name])
3. Commit your changes (git commit -m 'What this commit will fix/add')
4. Push to the branch (git push origin feature/[chosen name])
5. Create a new Pull Request
> You can also create [issues](https://github.com/johnsonsirv/micro-reddit/issues)

## License

This project is licensed under the MIT License - see the [LICENSE](./LICENSE.md) file for details.
