// Vybere všechny dvojice hodin, které se odehrávají ve stejné časovém slotu a mají stejný předmět.
// Vypíše identifikátory lesson1, lesson2 a jméno předmětu.

MATCH
	(lesson1)-[:TAKES_TIME]->(:TimeSlot)<-[:TAKES_TIME]-(lesson2),
	(lesson1)-[:IS_TAUGHT]->(subject:Subject)<-[:IS_TAUGHT]-(lesson2)
WHERE
	lesson1.ID < lesson2.ID
RETURN
	lesson1.ID AS `Lesson1 ID`, lesson2.ID AS `Lesson2 ID`, subject.name AS `Subject name`