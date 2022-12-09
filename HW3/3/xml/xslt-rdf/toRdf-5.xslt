<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" 
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
   xmlns:xs="http://www.w3.org/2001/XMLSchema"
   xmlns:fn="http://www.w3.org/2005/xpath-functions">

<xsl:output method="text" encoding="UTF-8" />
<xsl:variable name="prefix">https://example.org/</xsl:variable>
<xsl:template match="Timetables">
@prefix xsd: &lt;https://www.w3.org/2001/XMLSchema#&gt; .
@prefix foaf: &lt;http://xmlns.com/foaf/0.1/&gt; .
@prefix time: &lt;http://www.w3.org/2006/time#&gt; .

@prefix ex: &lt;http://example.org/vocabulary/&gt; .

@prefix exClass: &lt;ttp://example.org/data/classes/&gt; .
@prefix exTeacher: &lt;ttp://example.org/data/teachers/&gt; .
@prefix exLesson: &lt;ttp://example.org/data/lessons/&gt; .
@prefix exClassroom: &lt;ttp://example.org/data/classrooms/&gt; .
@prefix exSubject: &lt;ttp://example.org/data/subjects/&gt; .
@prefix exStudent: &lt;ttp://example.org/data/students/&gt; .
@prefix exTimeSlot: &lt;ttp://example.org/data/timeslots/&gt; .
@prefix exTimetable: &lt;ttp://example.org/data/timetables/&gt; .



</xsl:template>
</xsl:stylesheet>
