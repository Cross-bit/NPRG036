<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" 
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
   xmlns:xs="http://www.w3.org/2001/XMLSchema"
   xmlns:fn="http://www.w3.org/2005/xpath-functions">

<xsl:output method="text" encoding="UTF-8" />
<xsl:variable name="prefix">https://example.org/</xsl:variable>

<xsl:template match="TimeSlots" >
@prefix xsd: &lt;https://www.w3.org/2001/XMLSchema#&gt; .
@prefix foaf: &lt;http://xmlns.com/foaf/0.1/&gt; .
@prefix time: &lt;http://www.w3.org/2006/time#&gt; .

@prefix ex: &lt;http://example.org/vocabulary/&gt; .
<xsl:apply-templates select="TimeSlot" />
</xsl:template>


<xsl:template match="TimeSlot" >
   &lt;<xsl:value-of select="self::TimeSlot/@ID"/>&gt; a ex:TimeSlot ;
	ex:TimeSlotBeginning "<xsl:value-of select="TimeSlotBeginning"/>"^^xsd:time ;
	ex:TimeSlotEnd "<xsl:value-of select="TimeSlotEnd"/>"^^xsd:time ;
	ex:DayOfWeek time:<xsl:value-of select="DayOfWeek"/> .
   <xsl:apply-templates select="TakesTime/Lesson" />
</xsl:template>

<xsl:template match="TakesTime/Lesson" >
   &lt;<xsl:value-of select="self::Lesson/@ID"/>&gt; a ex:TimeSlot ;
	ex:TakesTime &lt;<xsl:value-of select="ancestor::TimeSlot/@ID"/>&gt; .

</xsl:template>

</xsl:stylesheet>
