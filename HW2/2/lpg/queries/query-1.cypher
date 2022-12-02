// Vybere všechny jména žáků a učitelů a id hodin, na kterých se mohou potkat.

MATCH 
	(student:Student)-[:BELONGS_TO]->(:Class)<-[:BELONGING_CLASS]-(:Timetable)-[:PLANNED_LESSON]->
		(lesson:Lesson)-[:IS_TAUGHT]->(:Subject)<-[:TEACHES]-(teacher:Teacher)
RETURN
	student.name AS `Student name`, teacher.name AS `Teacher name`, lesson.ID AS `Lesson ID`