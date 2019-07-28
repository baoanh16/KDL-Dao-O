<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	
	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
	</xsl:template>
	
	<xsl:template match="Zone">
		<xsl:choose>
			<xsl:when test="position()=3">
				<div class="home-block-3 section-kdldaoo">
					<div class="container">
						<h2 class="main-title">
							<xsl:value-of select="/ZoneList/ModuleTitle" disable-output-escaping="yes"></xsl:value-of>
						</h2>
						<div class="row">
							<div class="swiper-container">
								<div class="swiper-wrapper">
									<xsl:apply-templates select="News" mode="News-3"></xsl:apply-templates>
								</div>
							</div>
						</div>
						<div class="swiper-button">
							<div class="nav-prev"></div>
							<div class="nav-next"></div>
						</div>
					</div>
				</div>
			</xsl:when>
			
			<xsl:when test="position()=5"></xsl:when>
			<xsl:when test="position()=6"></xsl:when>
			<xsl:when test="position()=7"></xsl:when>
		</xsl:choose>
	</xsl:template>
	<xsl:template match="News" mode="News-3">
		<div class="swiper-slide">
			<div class="boximg">
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
	<xsl:template match="News" mode="News-4"></xsl:template>
	<xsl:template match="News" mode="News-5"></xsl:template>
	<xsl:template match="News" mode="News-6"></xsl:template>
	<xsl:template match="News" mode="News-7"></xsl:template>
</xsl:stylesheet>