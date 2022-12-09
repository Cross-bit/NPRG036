<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" 
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
   xmlns:xs="http://www.w3.org/2001/XMLSchema"
   xmlns:fn="http://www.w3.org/2005/xpath-functions">

<xsl:output method="text" encoding="UTF-8" />
<xsl:variable name="prefix">https://example.org/</xsl:variable>



@prefix exSubject: &lt;http://example.org/data/subjects/&gt; .
<!-- 

@prefix xsd: <https://www.w3.org/2001/XMLSchema#> .
@prefix foaf: <http://xmlns.com/foaf/0.1/> .
@prefix time: <http://www.w3.org/2006/time#> .

-->



exSubject:<xsl:value-of select="self::Subject/Name"/> a ex:Subject ;
    ex:SubjectID "<xsl:value-of select="SubjectCode"/>" ;
    ex:TimetableVersion <xsl:value-of select="TimetableVersion"/> ;
    ex:PlannedLesson <xsl:apply-templates select="PlannedLesson/Lesson" /> ;
    ex:BelongingClass &lt;<xsl:value-of select="BelongingClass/Class/@ID" />&gt; .







</xsl:template>
</xsl:stylesheet>
