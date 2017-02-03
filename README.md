# RDM-editions project, developped by WCS Students:
### Aymen MECHICHE, Florent DABIN, Adam BENYAHIA, Yann CHANTELOUP.

This project was developped using Symfony2.8, [checkout the Symfony requirements.](http://symfony.com/doc/current/reference/requirements.html)

###Operating System and Web configurations
We recommend to run this project with the **Linux** System and an Apache server. Checkout the [Lamp stack.](https://doc.ubuntu-fr.org/lamp)
### Follow the next instructions to install the project
```
$ git clone https://github.com/WildCodeSchool/lyon_1106_rdmeditionv2.git RepositoryName
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
##### Configure your parameters in the **app/config/parameters.yml**
##### You can check all parameters needed into **/app/config/parameters.yml.dist**
Ask the clients the mail adress and password for all emails that the application will send, and
Also the PayPal API NVP/Soap credentials :
 - **Username**
 - **Password**
 - **Signature**.
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
 $ php app/console server:start --env=prod
```
 The first thing to do is to log in with /admin by using the test credentials :
  - Id : **test**
  - Password : **test**
 
 Check the menu on the Back office panel, and choose the **Admin** section.
 **Create** your own admin credentials. Loggount and loggin with your own account just created.
 **Delete** the test account.
 
 Now configure as you wish the back-office.
 Start by set the right price of the books already in the database.
 
#### Product management

The carousel on the homepage showcase only 3 books.
It prioritize :
The books who had an event, then the books that have stamps.

If you have any question: 
**aymen.mechiche@gmail.com** , **laurent@wildcodeschool.fr**