// Vybere všechny trojice identifikátorů tříd, jmen jejich třídních učitelů a názvů předmětů, kde daný učitel může učit svoji třídu.

MATCH 
	(class:Class)<-[:BelongingClass]-(:Timetable)-[:PlannedLesson]->(:Lesson)-[:IsTaught]->
		(subject:Subject)<-[:Teaches]-(teacher:Teacher)<-[:ClassTeacher]-(class:Class)
RETURN
	teacher.name AS `Class teacher name`, class.year + "." + class.code  AS `Class ID`, subject.name AS `Subject name`