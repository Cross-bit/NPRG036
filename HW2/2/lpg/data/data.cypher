match ()-[n]-() delete n;
match (n) delete n;

// Třídní rozvrh

CREATE
(_20216A15:Timetable {
    academicYear: "2020/2021",
    version: 1.5
}),
(_21226B10:Timetable {
    academicYear: "2021/2022",
    version: 1.0
}),
(_22234C20:Timetable {
    academicYear: "2022/2023",
    version: 2.0
})

// Třída

CREATE
(_6A:Class {
    code: "A",
    year: 6
}), //<-[:BelongingClass]-(_20216A15);
(_6B:Class {
    code: "B",
    year: 6
}), //<-[:BelongingClass]-(_21226B10);
(_4C:Class {
    code: "C",
    year: 4
}); //<-[:BelongingClass]-(_22234C20);


// Hodiny
CREATE
(TH0855S6:Lesson {
    LessonID: "TH0855S6",
    LessonUrl: "https://zoom.com/TH0855S6"
}),
(MO0800S7:Lesson {
    LessonID: "MO0800S7",
    LessonUrl: "https://zoom.com/MO0800S7"
}),
(FR1000S9:Lesson {
    LessonID: "FR1000S9",
    LessonUrl: "https://zoom.com/FR1000S9"
}),
(FR1000S6:Lesson {
    LessonID: "FR1000S6",
    LessonUrl: "https://zoom.com/FR1000S6"
}),
(TH0855S7:Lesson {
    LessonID: "TH0855S7",
    LessonUrl: "https://zoom.com/TH0855S7"
});

CREATE
(_20216A15)-[:PlannedLesson]->(TH0855S6);
// 

// Učebny
CREATE
(S6:Classroom {
    ClassroomID: "S6",
    ClassroomCapacity: 30
}),

(S7: Classroom {
    ClassroomID: "S7",
    ClassroomCapacity: 28
}),

(S9:Classroom {
    ClassroomID: "S9",
    ClassroomCapacity: 30
})

// Předměty
CREATE
(Math: Subject {
    SubjectID: "mt",
    SubjectName: "Matematika"
}),

(English: Subject {
    SubjectID: "en",
    SubjectName: "Angličtina"
}),

(Physics: Subject {
    SubjectID: "ps",
    SubjectName: "Fyzika"
})

match (n) return n;
