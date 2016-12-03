#Run consul container in the backgroundi
docker run -d -p 8500:8500 --name=consul progrium/consul -server -bootstrap

#Run Swarm manager container in the background 
docker run -d -p 4000:4000 swarm manage -H :4000 --advertise 192.168.0.248:4000 consul://192.168.0.248:8500

#Run Swarm join on agent1
docker run -d swarm join --advertise=192.168.0.247:2375 consul://192.168.0.248:8500

#Run Swarm join on agent2
docker run -d swarm join --advertise=192.168.0.246:2375 consul://192.168.0.248:8500
