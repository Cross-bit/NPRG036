// Vybere všechny trojice identifikátorů tříd, jmen jejich třídních učitelů a názvů předmětů, kde daný učitel může učit svoji třídu.

MATCH 
	(class:Class)<-[:BELONGING_CLASS]-(:Timetable)-[:PLANNED_LESSON]->(:Lesson)-[:IS_TAUGHT]->
		(subject:Subject)<-[:TEACHES]-(teacher:Teacher)<-[:CLASS_TEACHER]-(class:Class)
RETURN
	teacher.name AS `Class teacher name`, class.year + "." + class.code  AS `Class ID`, subject.name AS `Subject name`