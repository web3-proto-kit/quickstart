# quickstart
Quickstart run guide (Tested on UNIX/MAC only)

1. git clone <url>
2. Give execute permission to your script:
  chmod +x /path/to/yourscript.sh
3. And to run your script:
  /path/to/yourscript.sh
4. Since . refers to the current directory: if yourscript.sh is in the current directory, you can simplify this to:
  ./yourscript.sh
  
This script starts the following docker containers:
    - UI-table-view
    - hashing-service
    - ingest-service
    - mock-blockchain-swagger-ui
    - rabbit-mq:3-management

http:localhost:8080/ Brings you to the rabbitMQ management login screen. Here you can view the rabbit-mq queues/exchanges live data. Username = user, Password = password

http:/localhost:8000/live Brings you to the React/Redux frontend to view the hashed messages live table. 

