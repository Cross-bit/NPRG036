<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:fn="http://www.w3.org/2005/xpath-functions">

    <xsl:output method="html" encoding="UTF-8" indent="yes" />
    <xsl:template match="Teachers">
        <html>
            <head>
                <title>
                    Teachers
                </title>
            </head>
            <body>
                <h1>
                    Teachers
                </h1>

                <xsl:apply-templates select="Teacher" />


            </body>
        </html>
    </xsl:template>

     <xsl:template match="Teacher">
        <h2>
            <xsl:value-of select="Name" />
        </h2>
            <dl>
                    <dt><b>Identifier:</b></dt>
                    <dd><xsl:value-of select="self::Teacher/@ID" /></dd>    
                    <dt><b>TeacherCode:</b></dt>
                    <dd><xsl:value-of select="TeacherCode" /></dd>
                    <dt><b>Experience:</b></dt>
                    <dd><xsl:value-of select="Experience"/></dd>
                    <dt><b>Subjects teaches:</b></dt>
                    <xsl:apply-templates select="Subjects" />
                    <dt><b>Is class teacher of:</b></dt>
                </dl>  
     </xsl:template>

    <xsl:template match="Subjects">
                <dl>
                    <xsl:apply-templates select="Subject" />
                </dl> 
    </xsl:template>

    <xsl:template match="Subject">
            
            <dt><b>Identifier:</b></dt>
            <dd><xsl:value-of select="self::Subject/@ID" /></dd>    
            <dt><b>SubjectCode:</b></dt>
            <dd><xsl:value-of select="SubjectCode" /></dd>
            <dt><b>Name:</b></dt>
            <dd><xsl:value-of select="Name" /></dd>
            <hr></hr>
    </xsl:template>

    <!-- 
    
    java -jar $HOME/school/saxon/saxon-he-11.3.jar -xsl:"./toHtml.xslt" -s:"$HOME/school/NPRG036/HW3/3/xml/data/data-4.xml"  -o:"$HOME/school/NPRG036/HW3/3/xml/xslt-html/toHtml.html"
     -->
</xsl:stylesheet>