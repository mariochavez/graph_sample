# Graph Sample App

This is a sample Rails 4.0 application that shows how to use
[Chartkick](http://ankane.github.io/chartkick/), [Group
Date](https://github.com/ankane/groupdate) and [Google
charts](https://developers.google.com/chart/) in a simple way.

## Ruby and Rails version
This app was devloped using Ruby 2.0 and Ruby on Rails 4.0, it also depends on
a postgresql server.

## Configuration
To run the sample app just execute the following commands:

    $ bundle
    $ rake db:migrate
    $ rake db:seed
    $ rails server

> Note: Review `config/database.yml` and set proper values for your database
> engine.

Point your browser to `http://127.0.0.1:3000` and click on the menu to display
the graph.

## Additiona notes
If you want to try it with Mysql, change the `Gemfile` to remove `pg` gem and
add `mysql2` gem also modify your `config/database.yml` to reflect setting for
your Mysql database.

For the `groupdate` gem you will need to install Mysql support for Time zone,
you can do it runnign the following command:

    $ mysql_tzinfo_to_sql /usr/share/zoneinfo | mysql -u root mysql

Asumming that time zone infor is available at `/user/share/zoneinfo`.

## License
Copyright © 2013 Mario A Chavez. It is free software, and may be redistributed
under the terms specified in the MIT-LICENSE file.
