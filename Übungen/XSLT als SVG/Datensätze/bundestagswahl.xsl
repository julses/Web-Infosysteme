<?xml version="1.0"?>

<!-- keep all three namespaces, xlink may not be needed, but the others are -->
<xsl:stylesheet version="1.0" 
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		xmlns:xlink="http://www.w3.org/1999/xlink"
		xmlns="http://www.w3.org/2000/svg"
		>
  
  <!-- **** output/input configuration -->
  
  <xsl:output
      method="xml"
      indent="yes"
      standalone="no"
      doctype-public="-//W3C//DTD SVG 1.1//EN"
      doctype-system="http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd"
      media-type="image/svg" />
  
  <!-- must remove white spaces within the list element, 
       otherwise count will not work -->
  <xsl:strip-space elements="wahlergebnis"/>
  
  <xsl:template match="/">
	<html xmlns="http://www.w3.org/1999/xhtml">
      <head>
        <meta charset="utf-8"></meta>
        <title>Auswertung der Bundestagswahl 2005</title>
      </head>
      <body>
        <p>Auswertung der Bundestagswahl 2005</p>
        <svg xmlns="http://www.w3.org/2000/svg" width="800" height="800" >
          <xsl:apply-templates/>
		</svg>
	  </body>
	</html>
  </xsl:template>
  

  <xsl:template match="wahlergebnis">
    <xsl:for-each select="ergebnis">
      <rect x="{10*position()}" y="{100- .}" width="10" height="{.}" fill="red" stroke="black"/>        
    </xsl:for-each>
  </xsl:template>
  
</xsl:stylesheet>
