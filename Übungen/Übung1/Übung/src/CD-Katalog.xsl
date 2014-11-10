<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>CD-Katalog</title>
            </head>
            <body>
                <table border="1">
                    <tr bgcolor="#9acd32">
                        <td>Interpret</td>
                        <td>Titel</td></tr>
                    <xsl:apply-templates/>
                </table>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="cd-katalog/cd">
        <tr>
            <td><xsl:value-of select="interpret/text()" /></td>
            <td><xsl:value-of select="Titel" /></td>
        </tr>
    </xsl:template>
</xsl:stylesheet>