// Vybere všechny jména žáků a učitelů a id hodin, na kterých se mohou potkat.

MATCH 
	(student:Student)-[:BelongsTo]->(:Class)<-[:BelongingClass]-(:Timetable)-[:PlannedLesson]->
		(lesson:Lesson)-[:IsTaught]->(:Subject)<-[:Teaches]-(teacher:Teacher)
RETURN
	student.name AS `Student name`, teacher.name AS `Teacher name`, lesson.ID AS `Lesson ID`