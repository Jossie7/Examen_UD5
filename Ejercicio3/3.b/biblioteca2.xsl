<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
    <body>
        <h4> Nombre y apellidos: Jossie Allisson Yovera Consuelo</h4>
        <ol>
            <xsl:for-each select="bib/libro"> 
            <xsl:if test="precio &lt;100">
            <li>
            <xsl:value-of select="titulo"/></li>
            </xsl:if>
            </xsl:for-each> 
        </ol>
    </body>
    </html>
</xsl:template>
</xsl:stylesheet>