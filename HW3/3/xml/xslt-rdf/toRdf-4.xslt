<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">
  <xsl:output method="text" encoding="UTF-8" />
  
  <xsl:template match="/">
@prefix xsd: &lt;https://www.w3.org/2001/XMLSchema#&gt; .
@prefix foaf: &lt;http://xmlns.com/foaf/0.1/&gt; .

# Custom prefixes
@prefix ex: &lt;http://example.org/vocabulary/&gt; .
@prefix exClass: &lt;http://example.org/data/classes/&gt; .
@prefix exTeacher: &lt;http://example.org/data/teachers/&gt; .
@prefix exSubject: &lt;http://example.org/data/subjects/&gt; .

<xsl:apply-templates mode="entity" select="Teachers"/>
  </xsl:template>
  
  <xsl:template mode="IRI" match="node()">
&lt;<xsl:value-of select="@ID" />&gt;
  </xsl:template>
  
  <xsl:template mode="entity" match="Teacher">
<xsl:apply-templates mode="IRI" select="." /> a ex:Teacher ;
	ex:TeacherID "<xsl:value-of select="TeacherCode" />"^^xsd:ID ;
	foaf:name "<xsl:value-of select="Name" />"@<xsl:value-of select="Name/@xml:lang" /> ;
	ex:TeacherExperience "<xsl:value-of select="Experience" />"^^xsd:integer <xsl:if test="count(Subjects/Subject) &gt; 0">;
	ex:Teaches &lt;<xsl:value-of select="Subjects/Subject/@ID" separator="&gt;, &lt;" />&gt; </xsl:if>.

<xsl:apply-templates mode="entity" select="Subjects" />

<xsl:apply-templates mode="entity" select="ClassTeacher" />
  </xsl:template>
  
  <xsl:template mode="entity" match="Subject">
<xsl:apply-templates mode="IRI" select="." /> a ex:Subject ;
	ex:SubjectID "<xsl:value-of select="SubjectCode" />"^^xsd:ID ;
	ex:SubjectName "<xsl:value-of select="Name" />"@<xsl:value-of select="Name/@xml:lang" /> .
  </xsl:template>
  
  <xsl:template mode="entity" match="Class">
<xsl:apply-templates mode="IRI" select="." /> a ex:Class ;
	ex:ClassCode "<xsl:value-of select="ClassCode" />"^^xsd:token ;
	ex:ClassYear <xsl:value-of select="ClassYear" /> ;
	ex:ClassTeacher <xsl:apply-templates mode="IRI" select="../.." /> .
  </xsl:template>
  
  <!--xsl:template match="text()" /-->
</xsl:stylesheet>
