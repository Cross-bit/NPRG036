MATCH ()-[n]-() DELETE n;
MATCH (n) DELETE n;

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


//Časové sloty

CREATE
(MO08000:TimeSlot {
	TimeSlotBeginning: "08:00:00",
	TimeSlotEnd: "08:45:00",
	DayOfWeek: "Monday"
}),
(TH0855:TimeSlot {
	TimeSlotBeginning: "08:55:00",
	TimeSlotEnd: "09:40:00",
	DayOfWeek: "Thursday"
}),
(MO08000:TimeSlot {
	TimeSlotBeginning: "10:00:00",
	TimeSlotEnd: "10:45:00",
	DayOfWeek: "Friday"
})



// Učebny

CREATE
(S6:Classroom {
    ClassroomID: "S6",
    ClassroomCapacity: 30
}),
(S7:Classroom {
	ClassroomID: "S7",
	ClassroomCapacity: 28
}),
(S9:Classroom {
    ClassroomID: "S9",
    ClassroomCapacity: 30
})

// Předměty

CREATE
(Math:Subject {
	SubjectID: "mt",
	SubjectName: "Matematika"
}),

(English:Subject {
	SubjectID: "en",
	SubjectName: "Angličtina"
}),

(Physics:Subject {
	SubjectID: "ps",
	SubjectName: "Fyzika"
})

// Učitel
CREATE
(muk:Teacher {
	ID: "muk",
	name: "Vladimír Mukvald",
	experience: 5
}),
(pel:Teacher {
	ID: "pel",
	name: "Jaroslav Pelikán",
	experience: 3
}),
(svo:Teacher {
	ID: "svo",
	name: "Patrik Svoboda",
	experience: 2
});

// Žák
CREATE
(kovpe:Student {
	ID: "kovpe",
	name: "Petr Kovář"
}),
(:Student {
	ID: "",
	name: ""
}),
(kliji:Student {
	ID: "kliji",
	name: "Jiří Klimošek",
	nickname: ["Limoš"]
}),
(novpa:Student {
	ID: "novpa",
	name: "Pavel Novák",
	nickname: ["Kajak", "Bizon"]
});

// Učitel vazby
CREATE
(muk)-[:Teaches]->(Math),
(pel)-[:Teaches]->(Math),
(pel)-[:Teaches]->(Physics),
(svo)-[:Teaches]->(English);

// Student vazby
(kovpe)-[:BelongsTo]->(_6A),
(kliji)-[:BelongsTo]->(_6B),
(novpa)-[:BelongsTo]->(_4C);

//Hodina vazby

CREATE
(TH0855S6)-[:TakesTime]->(TH0855),
(TH0855S6)-[:TakesPlace]->(S6),
(TH0855S6)-[:IsTaught]->(Math),

(MO0800S7)-[:TakesTime]->(MO0800),
(MO0800S7)-[:TakesPlace]->(S7),
(MO0800S7)-[:IsTaught]->(English),

(FR1000S9)-[:TakesTime]->(FR1000),
(FR1000S9)-[:TakesPlace]->(S9),
(FR1000S9)-[:IsTaught]->(English),

(FR1000S6)-[:TakesTime]->(FR1000),
(FR1000S6)-[:TakesPlace]->(S6),
(FR1000S6)-[:IsTaught]->(Physics),

(TH0855S7)-[:TakesTime]->(TH0855),
(TH0855S7)-[:TakesPlace]->(S7),
(TH0855S7)-[:IsTaught]->(Math);

MATCH (n) RETURN n;
