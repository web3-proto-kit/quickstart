# Summary
Quickstart run guide (Tested on UNIX/MAC only)

This is a toy application that should serve as an example of a containerized microservice architecture with a react web client for consumption and presentation of live data. 

Below is a quick summary of the project. 


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
