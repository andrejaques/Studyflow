import express from "express";
import { createCourse } from "./routes";

const PORT = 3333;

const app = express();

console.log({ message: `App running in port ${PORT}` });

app.get("/", (request, response) => {
	return response.json({ message: `Wellcome to TS APP` });
});

app.get("/test", createCourse);

app.listen(3333);
