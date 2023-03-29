<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
    <body>
    <p> Nombres y apellidos: Jossie Yovera</p>
        <table border="1">
        <tr>
                <th> precio </th>
                <th> titulo </th>
                <th> anyo </th>
        </tr>
        <xsl:for-each select="bib/libro">
        <xsl:sort select="precio" order="descending" data-type="string"/>
        <tr>
            <td><xsl:value-of select ="precio"/></td>
            <td><xsl:choose>
                    <xsl:when test="precio&gt;100">
                        <td bgcolor="red"><xsl:value-of select="titulo"/></td>
                    </xsl:when>
                </xsl:choose>
            </td>
            <td><font type="cursive"><xsl:value-of select ="@anyo"/></font></td>
        </tr>
        </xsl:for-each>
        </table>
    </body>
    </html>
</xsl:template>
</xsl:stylesheet>