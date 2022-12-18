<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" 
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
   xmlns:xs="http://www.w3.org/2001/XMLSchema"
   xmlns:fn="http://www.w3.org/2005/xpath-functions">

<xsl:output method="text" encoding="UTF-8" />
<xsl:variable name="prefix">https://example.org/</xsl:variable>


<xsl:template match="Subjects" >

@prefix xsd: &lt;http://www.w3.org/2001/XMLSchema#&gt; .
@prefix foaf: &lt;http://xmlns.com/foaf/0.1/&gt; .
@prefix time: &lt;http://www.w3.org/2006/time#&gt; .

@prefix ex: &lt;http://example.org/vocabulary/&gt; .


<xsl:apply-templates select="Subject" />
</xsl:template>



<xsl:template match="Subject" >
&lt;<xsl:value-of select="self::Subject/@ID"/>&gt; a ex:Subject ;
    ex:SubjectName "<xsl:value-of select="Name"/>"@<xsl:value-of select="Name/@xml:lang"/> ;
    ex:SubjectID "<xsl:value-of select="SubjectCode"/>"^^xsd:ID .

<xsl:apply-templates select="IsTaught/Lesson" />

</xsl:template>


<xsl:template match="IsTaught/Lesson" >
&lt;<xsl:value-of select="self::Lesson/@ID"/>&gt; a ex:Lesson .
&lt;<xsl:value-of select="self::Lesson/@ID"/>&gt; ex:IsTaught &lt;<xsl:value-of select="ancestor::Subject/@ID"/>&gt; .
</xsl:template>

</xsl:stylesheet>
