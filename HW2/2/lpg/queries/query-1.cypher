//MATCH (studentName:Student)-[:BelongsTo]->(:Class)<-[:BelongingClass]-(:Timetable)-[:PlannedLesson]->(lessonID:Lesson)-[:IsTaught]->(:Subject)<-[:Teaches]-(teacherName:Teacher)  return teacherName, lessonID, studentName

MATCH path = (:Student)-[:BelongsTo]->(:Class)<-[:BelongingClass]
-(:Timetable)-[:PlannedLesson]->(:Lesson)-[:IsTaught]->(:Subject)<-[:Teaches]-(:Teacher) RETURN DISTINCT path