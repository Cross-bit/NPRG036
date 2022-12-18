<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">
  <xsl:output method="text" encoding="UTF-8" />
  
  <xsl:template match="/">
@prefix xsd: &lt;http://www.w3.org/2001/XMLSchema#&gt; .

# Custom prefixes
@prefix ex: &lt;http://example.org/vocabulary/&gt; .
@prefix exClassroom: &lt;http://example.org/data/classrooms/&gt; .
@prefix exLesson: &lt;http://example.org/data/lessons/&gt; .

<xsl:apply-templates mode="entity" select="Classrooms"/>
  </xsl:template>
  
  <xsl:template mode="IRI" match="node()">
&lt;<xsl:value-of select="@ID" />&gt;
  </xsl:template>
  
  <xsl:template mode="entity" match="Classroom">
<xsl:apply-templates mode="IRI" select="." /> a ex:Classroom ;
	ex:ClassroomID "<xsl:value-of select="Code" />"^^xsd:ID ;
	ex:ClassroomCapacity <xsl:value-of select="ClassroomCapacity" /> .

<xsl:apply-templates mode="entity" select="TakesPlace" />
  </xsl:template>
  
  <xsl:template mode="entity" match="Lesson">
<xsl:apply-templates mode="IRI" select="." /> a ex:Lesson ;
	ex:LessonID "<xsl:value-of select="Code" />"^^xsd:ID ;
  ex:LessonUrl "<xsl:value-of select="ZoomURI" />"^^xsd:anyURI ;
	ex:TakesPlace <xsl:apply-templates mode="IRI" select="../.." /> .
  </xsl:template>
  
  <!--xsl:template match="text()" /-->
</xsl:stylesheet>
