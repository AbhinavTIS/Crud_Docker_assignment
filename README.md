# How to test the CRUD APIs

```bash
curl -X GET http://localhost:8012/tasks
curl -X POST http://localhost:8012/tasks \\n-H "Content-Type: application/json" \\n-d '{"title": "Study for exams", "status":"pending"}'
curl -X GET http://localhost:8012/tasks
curl -X PUT http://localhost:8012/task/75e37821-a30a-4242-966f-63a0bb22bf8b -H "Content-Type: application/json" -d '{"title": "Study for exams", "status":"complete"}'
curl -X GET http://localhost:8012/tasks
```

# How to build docker image and docker file and how to push it to docker hub:
docker build -t gocrud:v02 .

docker run -p 8012:8012 gocrud:v02

docker run -p 8012:8012 maziar/gocrud:v02
