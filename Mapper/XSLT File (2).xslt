<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output omit-xml-declaration="yes" indent="yes"/>
<xsl:template match="/">
	<count>
		<xsl:value-of select="count(catalog/cd[price>10])"/>
	</count>             			
</xsl:template></xsl:stylesheet>