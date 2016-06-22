<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:output omit-xml-declaration="yes" indent="yes"/>

<xsl:template match="/">

	<xsl:for-each-group select= "catalog/cd" group-by= "company">
   		<Details><Company-Name>
						<xsl:value-of select = "company"/>
					</Company-Name>
             			<xsl:for-each select = "current-group()">
					<Artist><xsl:value-of select ="artist"/></Artist>
					<Price><xsl:value-of select ="price"/></Price>
				</xsl:for-each>
			</Details>
	</xsl:for-each-group>
</xsl:template></xsl:stylesheet>