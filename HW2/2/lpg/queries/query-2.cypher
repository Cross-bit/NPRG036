MATCH path = 
(:Class)<-[:BelongingClass]-(:Timetable)-[:PlannedLesson]->(:Lesson)-[:IsTaught]->(:Subject)<-[:Teaches]-(pel:Teacher {name: "Jaroslav Pelikán"})<-[:ClassTeacher]-(:Class) return path