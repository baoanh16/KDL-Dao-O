<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	
	<xsl:template match="/">
		<div class="menu-foods section-kdldaoo">
			<div class="container">
				<h2 class="main-title">
					<xsl:value-of disable-output-escaping="yes" select="/ZoneList/Zone/Title"></xsl:value-of>
				</h2>
				<div class="row">
					<xsl:apply-templates select="/ZoneList/Zone/News/NewsImages"></xsl:apply-templates>
					
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="NewsImages">
		<div class="col-sm-6 col-lg-4">
			<div class="meal">
				<img>
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
				</img>
			</div>
		</div>
		
	</xsl:template>
	
</xsl:stylesheet>