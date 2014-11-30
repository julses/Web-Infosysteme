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
  <xsl:strip-space elements="list"/>
  
  <xsl:template match="/">
    <svg xmlns="http://www.w3.org/2000/svg" width="800" height="800" >
      <xsl:apply-templates/>
    </svg>
  </xsl:template>
  
  <!-- Version for CS cry babies who need loops -->
  <xsl:template match="list">
    <rect x="10" y="105" width="{10 * count(item)}" 
	  height="5" fill="black" stroke="red"/>
    <xsl:for-each select="item">
      <rect x="{10*position()}" y="{100- .}" width="10" height="{.}" fill="red" stroke="black"/>        
    </xsl:for-each>
  </xsl:template>
  
</xsl:stylesheet>
