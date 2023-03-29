<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
    <body>
    <h4> Nombres y apellidos: Jossie Yovera</h4>
    <h1>IES Nuestra Sra. de los Remedios</h1>
        <table border="1">
        <tr>
                <th> Nombre </th>
                <th> Anyo </th>
        </tr>
        <xsl:for-each select="ies/ciclos/ciclo">
        <tr>
            <td><xsl:value-of select ="nombre"/></td>
            <td><xsl:choose>
                    <xsl:when test="decretoTitulo/@anyo&gt;2009">
                        <font color="green"><xsl:value-of select="decretoTitulo/@anyo"/></font>
                    </xsl:when>
                    <xsl:when test="decretoTitulo/@anyo&lt;2009">
                        <font color="red"><xsl:value-of select="decretoTitulo/@anyo"/></font>
                    </xsl:when>
                    <xsl:when test="decretoTitulo/@anyo&gt;2008">
                        <font color="blue"><xsl:value-of select="decretoTitulo/@anyo"/></font>
                    </xsl:when>
                </xsl:choose>
            </td>
        </tr>
        </xsl:for-each>
        </table>
    </body>
    </html>
</xsl:template>
</xsl:stylesheet>