# RDM-editions project, developped by WCS Students:
### Aymen MECHICHE, Florent DABIN, Adam BENYAHIA, Yann CHANTELOUP.

This project was developped using Symfony2.8, [checkout the Symfony requirements.](http://symfony.com/doc/current/reference/requirements.html)

###Operating System and Web configurations
We recommend to run this project with the **Linux** System and an Apache server. Checkout the [Lamp stack.](https://doc.ubuntu-fr.org/lamp)
### Follow the next instructions to install the project
```
$ git clone https://github.com/WildCodeSchool/lyon_1106_rdmeditionv2.git
```
```
$ sudo apt-get install php7.0-intl php7.0-mbstring  php7.0-gd php7.0-exif php7.0-fileinfo
```

```
$ sudo apt-get install libxrender1:i386
```
```
$ sudo apt-get install wkhtmltopdf
```
### Configuration of php environment
You need to set the timezone and memory_limit from the php.ini files.

php.ini files are located into /etc/php/7.0/cli and /etc/php/7.0/apache2 repository
set:
memory_limit = -1   (around lines 390)   
date.timezone = Europe/Paris    (around lines 920)

### Dependency installation
        
```
$ composer install
```
``` 
$ npm install
```
```
$ npm run gulp
```

### Database deployment steps
```
$ php app/console doctrine:database:create --env=prod
```
```
$ php app/console doctrine:schema:update --force --env=prod
```

Connect to mysql with 
``` 
$ mysql -u root -p 
```

Select your database
```
> use "databasename";
```
Import the data with an inversed dump
```
> source dump.sql;
```
## Now the project is ready
####Run a server
```
> $ php app/console server:start --env=prod
```
 The first thing to do is to log in with /admin by using the test credentials (test@example.com/test):Id/Pwd
 
 go inside to the sidebar and choose the admin section and create your own admin credentials then delete the test one.
 
 Now configure as you wish the back-office.