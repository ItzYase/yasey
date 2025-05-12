./stop-en-remove-container.sh


echo *** building image
docker image build -t opdracht7 .

echo *** creating and starting container
docker container run -dt -p81:80 --name opdracht7-cont opdracht7
