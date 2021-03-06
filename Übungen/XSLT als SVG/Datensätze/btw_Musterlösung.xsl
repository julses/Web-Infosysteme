<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns="http://www.w3.org/2000/svg" >
        <xsl:output method="xml"
                    doctype-system="http://www.w3.org/TR/2001/REC-SVG-20010904/DTD/svg10.dtd"
                    doctype-public="-//W3C//DTD SVG 1.0//EN"
                    encoding="UTF-8" />
        <xsl:template match="/wahlergebnis" >
                <svg width="1000" height="200" xmlns="http://www.w3.org/2000/svg" version="1.0" >
		<text x="50" y="50">
			<xsl:value-of select="beschreibung" />
am
			<xsl:value-of select="datum" />
		</text>
		<xsl:apply-templates select="ergebnis" />
		</svg>
	</xsl:template>
	<xsl:template match="ergebnis">
                <text y="80">
                        <xsl:attribute name="x"><xsl:number count="ergebnis" />00</xsl:attribute>
                        <xsl:value-of select="partei" />
                </text>
		<text y="95">
			<xsl:attribute name="x"><xsl:number count="ergebnis" />00</xsl:attribute>
			<xsl:value-of select="prozent" />%
		</text>
		<rect y="100" width="50">
			<xsl:attribute name="x"><xsl:number count="ergebnis" />00</xsl:attribute>
			<xsl:attribute name="height">
				<xsl:value-of select="prozent" />
			</xsl:attribute>
		</rect>
	</xsl:template>
</xsl:stylesheet>
