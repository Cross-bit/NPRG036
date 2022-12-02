// Pro každý časový slot vypíše hodiny (ve formátu "<třída> @ <učebna>"), které by mohl učit konkrétní učitel exTeacher:muk (Vladimír Mukvald).
// Pro sloty, kde nemůže učit žádnou, vypíše "none".
// Zároveň pro každou hodinu vypíše: den v týdnu, začátek a konec daného časového slotu v němž se odehrává.
// Výpis je seřazený podle dne v týdnu a času časových slotů.

MATCH
	(timeSlot:TimeSlot)
WHERE NOT
	(:Teacher {ID: "muk"})-[:TEACHES]->(:Subject)<-[:IS_TAUGHT]-(:Lesson)-[:TAKES_TIME]->(timeSlot)
RETURN
	timeSlot.dayOfWeek AS `Day of week`,
	timeSlot.beginning AS `Beginning time`,
	timeSlot.end AS `End time`,
	"none" AS `Lesson description`
UNION
MATCH
	(timeSlot:TimeSlot),
	(:Teacher {ID: "muk"})-[:TEACHES]->(subject:Subject),
	(timeSlot)<-[:TAKES_TIME]-(lesson)-[:IS_TAUGHT]->(subject),
	(class:Class)<-[:BELONGING_CLASS]-(:Timetable)-[:PLANNED_LESSON]->(lesson)-[:TAKES_PLACE]->(classroom:Classroom)
RETURN
	timeSlot.dayOfWeek AS `Day of week`,
	timeSlot.beginning AS `Beginning time`,
	timeSlot.end AS `End time`,
	class.year + "." + class.code + " @ " + classroom.ID AS `Lesson description`
ORDER BY
	CASE timeSlot.dayOfWeek
		WHEN "Monday" THEN 1
		WHEN "Tuesday" THEN 2
		WHEN "Wednesday" THEN 3
		WHEN "Thursday" THEN 4
		WHEN "Friday" THEN 5
		WHEN "Saturday" THEN 6
		WHEN "Sunday" THEN 7
		ELSE -1
	END,
	`Beginning time`,
	`End time`