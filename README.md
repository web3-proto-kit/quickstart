# Summary
Quickstart run guide (Tested on UNIX/MAC only)

This is a toy application that should serve as an example of a containerized microservice architecture with a react web client for consumption and presentation of live data. Microservices communicate via RabbitMQ. Client consumes messages via socket.io.

The ingest-service consumes messasges from our mock-blockchain application. Messages are passed to the NewMessageExchange within our RabbitMQ instance. The client-message-emitter service consumes Messages are emits them via socket.io to any subscribed clients. The react application consumes these messages and presents them in tabular format. 

The application logs all output as objects for descriptive logging. The ELK stack should be used here to view the logs. 
HTTPS/OAuth needs to be implemented next. 

# Quickstart Run Guide
Quickstart run guide (Tested on UNIX/MAC only)

```
1. git clone https://github.com/Blockchain-utility-applications/quickstart.git
2. npm run start:fresh
3. optional
   - npm start (doesn't clone required repos)
   - npm run clean (removes all cloned repos)
```

run.sh clones the required repos and uses docker-compose to start the network   

## Rabbit MQ
```
http:localhost:8080/
```
Brings you to the rabbitMQ management login screen. Here you can view the rabbit-mq queues/exchanges live data. Username = guest, Password = guest

## React UI 
```
http:localhost:3000/
```
Brings you to the react ui. Here you can view a table that lets you view live messages emitted from the client-message-emitter service. The client subscribes to the service via socket io.

## Next Steps 
I have recently been attempting to build a automated project that can provide Rapid Scaffolding of a microservices project that closesly resembles a production environment for a PoC that can seamlessly transition into production ready code with minimal modification. 

Below are some steps I would like to take to achieve this:

1. I want to have a standard configuration for logging so that i dont have to waste time evaluating various different tools.
2. I want to have the ability to set up configuration properties per environment so that I can run multiple environments concurrently
3. I want to have standard HTTP based framework boilerplates set up that can I use for REST/GraphQL endpoints
4. I want to have the ability to ensure that my HTTP endpoints are secure by default and white-list those that I deem safe. 
5. I want to have a boilerplate for a PWA which is configured for SSR, code splitting , Hot Module Reloading.
6. I want to have a Document Database Container, pre configured for a development setup which my application code has also been setup to connect to so that I can read and write data immediately. 
