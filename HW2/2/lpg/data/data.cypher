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
	url: "https://zoom.com/TH0855S6",
	ID: "TH0855S6"
}),
(MO0800S7:Lesson {
	url: "https://zoom.com/MO0800S7",
	ID: "MO0800S7"
}),
(FR1000S9:Lesson {
	url: "https://zoom.com/FR1000S9",
	ID: "FR1000S9"
}),
(FR1000S6:Lesson {
	url: "https://zoom.com/FR1000S6",
	ID: "FR1000S6"
}),
(TH0855S7:Lesson {
	url: "https://zoom.com/TH0855S7",
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
	beginning: "08:00:00",
	end: "08:45:00",
	dayOfWeek: "Monday"
}),
(TH0855:TimeSlot {
	beginning: "08:55:00",
	end: "09:40:00",
	dayOfWeek: "Thursday"
}),
(FR1000:TimeSlot {
	beginning: "10:00:00",
	end: "10:45:00",
	dayOfWeek: "Friday"
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
	ID: "S6",
	capacity: 30
}),
(S7:Classroom {
	ID: "S7",
	capacity: 28
}),
(S9:Classroom {
	ID: "S9",
	capacity: 30
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
(muk)-[:Teaches { yearsTeaching: 5 } ]->(Math),
(pel)-[:Teaches { yearsTeaching: 3 } ]->(Math),
(pel)-[:Teaches { yearsTeaching: 1 } ]->(Physics),
(svo)-[:Teaches { yearsTeaching: 2 } ]->(English),

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