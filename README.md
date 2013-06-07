HomeLink Web Application
========================

HomeLink is a web application used to create to-do lists, shopping lists, reminders, and chores for a group of users connected as a 'family'. It is written using the Grails web framework.

Users will be able to create a 'family' that other users can connect to. When a new list, reminder, or chore is created, the user will have the option to create the item for the family, or for themselves. This will allow family members to post to-dos, chores, or other items for the entire family to see, or just for personal use.

The application is currently in the beginning stages of development, and more features will be implemented with time.

A screenshot of the application in it's current state can be viewed below:

![alt text][screenshot1]

Dependencies
------------
- Java Development Kit 6 or greater
- Groovy 2.1.3
- Grails 2.2.2
- MySQL (optional)

For the development environment, the application uses the default Grails in-memory database, H2. The MySQL database can also be set up if desired by creating a database locally, then changing the dataSource settings on lines 15-38 of the <code>DataSource.groovy</code> file located in the application's <code>grails-app/conf/</code> directory. The settings for MySQL are shown below:

```groovy
dataSource {
	dbCreate = "create-drop" // Can be changed to 'create', 'update', or 'validate'
	url = "jdbc:mysql://localhost:3306/homelink"
	driverClassName = "com.mysql.jdbc.Driver"
	username = "root"
	password = ""
	properties {
		maxActive = 100
		maxIdle = 25
		minIdle = 5
		initialSize = 10
		minEvictableIdleTimeMillis = 60000
		timeBetweenEvictionRunsMillis = 60000
		maxWait = 10000
	}
}
```

Using the Application
---------------------

To run the application, download the repository and unzip it or clone the repository to your local machine using the following command:
```
git clone http://github.com/caseyscarborough/homelink.git
```
Run the following commands from a terminal window with the <code>homelink</code> directory as the working directory:
```
grails upgrade  # If your version of Grails is greater than 2.2.2
grails run-app
```

After running the commands, you can navigate to [http://localhost:8080/homelink][homelink] in your web browser to see the application in action.



[screenshot1]: https://github.com/caseyscarborough/homelink/raw/master/img/main.png "The application's main layout."
[homelink]: http://localhost:8080/homelink