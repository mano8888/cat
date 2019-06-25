manoj=$1
echo "creating a $manoj containers"
sleep 2:

for i in `seq $manoj`
do
echo "==================="
echo "just now creating www.dog$i containers"
sleep 1
sudo docker run -it --name www.dog$i mano8888/mydoc /bin/bash
echo "==============="
echo "www.dog$i containers are created"
done
