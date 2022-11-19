//MATCH (studentName:Student)-[:BelongsTo]->(:Class)<-[:BelongingClass]-(:Timetable)-[:PlannedLesson]->(lessonID:Lesson)-[:IsTaught]->(:Subject)<-[:Teaches]-(teacherName:Teacher)  return teacherName, lessonID, studentName

MATCH path = (student:Student)-[:BelongsTo]->(:Class)<-[:BelongingClass]
-(:Timetable)-[:PlannedLesson]->(lesson:Lesson)-[:IsTaught]->(:Subject)<-[:Teaches]-(teacher:Teacher) RETURN student.name, teacher.name, lesson.ID 