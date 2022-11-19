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
}),

// Třída
(_6A:Class {
	code: "A",
	year: 6
}),
(_6B:Class {
	code: "B",
	year: 6
}),
(_4C:Class {
	code: "C",
	year: 4
}),


// Hodina
(TH0855S6:Lesson {
	Url: "https://zoom.com/TH0855S6",
	ID: "TH0855S6"
}),
(MO0800S7:Lesson {
	Url: "https://zoom.com/MO0800S7",
	ID: "MO0800S7"
}),
(FR1000S9:Lesson {
	Url: "https://zoom.com/FR1000S9",
	ID: "FR1000S9"
}),
(FR1000S6:Lesson {
	Url: "https://zoom.com/FR1000S6",
	ID: "FR1000S6"
}),
(TH0855S7:Lesson {
	Url: "https://zoom.com/TH0855S7",
	ID: "TH0855S7"
}),

// Žák
(kovpe:Student {
	ID: "kovpe",
	name: "Petr Kovář"
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
}),

// Učtiel
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
}),

// Časový slot
(MO0800:TimeSlot {
	TimeSlotBeginning: "08:00:00",
	TimeSlotEnd: "08:45:00",
	DayOfWeek: "Monday"
}),
(TH0855:TimeSlot {
	TimeSlotBeginning: "08:55:00",
	TimeSlotEnd: "09:40:00",
	DayOfWeek: "Thursday"
}),
(FR1000:TimeSlot {
	TimeSlotBeginning: "10:00:00",
	TimeSlotEnd: "10:45:00",
	DayOfWeek: "Friday"
}),

// Předmět
(Math:Subject {
	ID: "mt",
	name: "Matematika"
}),
(English:Subject {
	ID: "en",
	name: "Angličtina"
}),
(Physics:Subject {
	ID: "ps",
	name: "Fyzika"
}),

// Učebna
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
}),

// Třídní rozvrh vazby
(_20216A15)-[:PlannedLesson]->(TH0855S6),
(_21226B10)-[:PlannedLesson]->(MO0800S7),
(_21226B10)-[:PlannedLesson]->(FR1000S6),
(_22234C20)-[:PlannedLesson]->(FR1000S9),

(_20216A15)-[:BelongingClass]->(_6A),
(_21226B10)-[:BelongingClass]->(_6B),
(_22234C20)-[:BelongingClass]->(_4C),

// Třída vazby
(_6A)-[:ClassTeacher]->(muk),
(_6B)-[:ClassTeacher]->(pel),
(_4C)-[:ClassTeacher]->(svo),

// Student vazby
(kovpe)-[:BelongsTo]->(_6A),
(kliji)-[:BelongsTo]->(_6B),
(novpa)-[:BelongsTo]->(_4C),

// Učitel vazby
(muk)-[:Teaches]->(Math),
(pel)-[:Teaches]->(Math),
(pel)-[:Teaches]->(Physics),
(svo)-[:Teaches]->(English),

// Hodina vazby
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