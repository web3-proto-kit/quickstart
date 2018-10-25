# quickstart
Quickstart run guide (Tested on UNIX/MAC only)


```
git clone https://github.com/Blockchain-utility-applications/quickstart.git
```
2.
```
bash run.sh
```

run.sh clones the required repos and uses docker-compose to start the network   

http:localhost:8080/ Brings you to the rabbitMQ management login screen. Here you can view the rabbit-mq queues/exchanges live data. Username = guest, Password = guest

http:/localhost:8000/live Brings you to the React/Redux frontend to view the hashed messages live table.

