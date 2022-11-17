
CREATE
(20216A15:Timetable {
    academicYear: "2020/2021",
    version: 1.5,
})-[:BelongingClass]->(6A),
(21226B10:Timetable {
    academicYear: "2021/2022",
    version: 1.0,
})-[:BelongingClass]->(6B),
(22234C20:Timetable {
    academicYear: "2022/2023",
    version: 2.0,
})-[:BelongingClass]->(4C),
(6A:Class {
    code: "A",
    year: 6
}),
(6B:Class {
    code: "B",
    year: 6
}),
(4C:Class {
    code: "C",
    year: 4
})