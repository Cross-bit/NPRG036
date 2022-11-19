// Vybere všechny trojice identifikátorů tříd, jejich třídních učitelů a předmětů, kde učitel může učit svoji třídu.

MATCH 
	(class:Class)<-[:BelongingClass]-(:Timetable)-[:PlannedLesson]->(:Lesson)-[:IsTaught]->
		(subject:Subject)<-[:Teaches]-(teacher:Teacher)<-[:ClassTeacher]-(class:Class)
RETURN
	teacher.name, class.year + "." + class.code, subject.name