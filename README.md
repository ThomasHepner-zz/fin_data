# FinData

Simple application for querying financial data.

## Setup

This applications runs on Ruby on Rails >= 5.1.0, MySQL >= 5.7.16 and Ruby 2.3.1. It also uses Bower for managing assets and external libraries, so you should have those installed. Here's a step by step guide for running the app (tested on macOS 10.12):

1. Fork the repository.
2. If you're using RVM, select the proper ruby version (`rmv install 2.3.1 && rvm use 2.3.1`).
3. Install Bower (if you haven't already): `npm install -g bower`.
4. Run Bundler: `bundle install`.
5. Install additional assets and frontend libraries with bower-rails cli: `rake bower:install`.
6. Go to `config/database.yml` and add your database configuration (user & password).
7. Run `rake db:create`.

Things should be working fine right now. If not, create an issue on the public repo.

## Technical debt

Due to time limitations there's a considerable amount on technical debt in the project. Feel free to post issues so I can work on them, or even create PRs to contribute.

Some current TODOs are:

* Refactoring in `reports_controller.rb`.
* Better use of SBIF API in order to be more precise with the values displayed in plots and tables.
* Add remote datatables with async pagination.