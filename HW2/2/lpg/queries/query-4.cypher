// Zobrazí rozvrh pro učitele exTeacher:muk (Vladimír Mukvald). Hodiny jsou ve formátu "<třída> @ <učebna>", nebo "none", pokud má v ten čas volno.

MATCH
	(timeSlot:TimeSlot)
WHERE NOT
	(:Teacher {ID: "muk"})-[:Teaches]->(:Subject)<-[:IsTaught]-(:Lesson)-[:TakesTime]->(timeSlot)
RETURN
	timeSlot.dayOfWeek AS DayOfWeek,
	timeSlot.beginning AS BeginningTime,
	timeSlot.end AS EndTime,
	"none" AS LessonDescription
UNION
MATCH
	(timeSlot:TimeSlot),
	(:Teacher {ID: "muk"})-[:Teaches]->(subject:Subject),
	(timeSlot)<-[:TakesTime]-(lesson)-[:IsTaught]->(subject),
	(class:Class)<-[:BelongingClass]-(:Timetable)-[:PlannedLesson]->(lesson)-[:TakesPlace]->(classroom:Classroom)
RETURN
	timeSlot.dayOfWeek AS DayOfWeek,
	timeSlot.beginning AS BeginningTime,
	timeSlot.end AS EndTime,
	class.year + "." + class.code + " @ " + classroom.ID AS LessonDescription
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
	BeginningTime,
	EndTime