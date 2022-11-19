// Zobrazí rozvrh pro učitele exTeacher:muk (Vladimír Mukvald). Hodiny jsou ve formátu "<třída> @ <učebna>", nebo "none", pokud má v ten čas volno.

MATCH
	(timeSlot:TimeSlot)
WHERE NOT
	(:Teacher {ID: "muk"})-[:Teaches]->(:Subject)<-[:IsTaught]-(:Lesson)-[:TakesTime]->(timeSlot)
RETURN
	timeSlot.dayOfWeek AS dow, timeSlot.beginning AS f, timeSlot.end AS t, "none" AS lessonDesc
UNION
MATCH
	(timeSlot:TimeSlot),
	(:Teacher {ID: "muk"})-[:Teaches]->(subject:Subject),
	(timeSlot)<-[:TakesTime]-(lesson)-[:IsTaught]->(subject),
	(class:Class)<-[:BelongingClass]-(:Timetable)-[:PlannedLesson]->(lesson)-[:TakesPlace]->(classroom:Classroom)
RETURN
	timeSlot.dayOfWeek AS dow, timeSlot.beginning AS f, timeSlot.end AS t, class.year + "." + class.code + " @ " + classroom.ID AS lessonDesc
ORDER BY
	reduce(ord = -1, w IN [[1, "Monday"], [2, "Tuesday"], [3, "Wednesday"], [4, "Thursday"], [5, "Friday"], [6, "Saturday"], [7, "Sunday"]] | CASE w[1] WHEN timeSlot.dayOfWeek THEN w[0] ELSE ord END), timeSlot.beginning, timeSlot.end