docker run --rm -it -v $PWD/webapp:/home/yeoman/webapp -w /home/yeoman/webapp -p 9000:9000 -p 3001:3001 qftgtr/yeoman /bin/bash

docker run --rm -it -v $PWD/app:/home/yeoman/app -w /home/yeoman/app qftgtr/yeoman /bin/bash

docker-compose up

cd ~/Documents/eclipse/mexue2_integral/src/main/webapp/static/jifen

docker run --rm -it -p 3000:3000 -p 3001:3001 -v $PWD:/home/yeoman/app -w /home/yeoman/app qftgtr/yeoman /bin/bash

docker run --rm -it -p 3000:3000 -p 3001:3001 -v $PWD:/home/yeoman/app -w /home/yeoman/app qftgtr/yeoman-sass /bin/bash