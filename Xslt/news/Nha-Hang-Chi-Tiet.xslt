<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="Zone">
		<xsl:if test="position() = 1">
			<div class="nhahang section-kdldaoo">
				<xsl:apply-templates select="News" mode="Background"></xsl:apply-templates>
				<div class="container">
					<h2 class="main-title">
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					</h2>
					<div class="row">
						<div class="col-lg-6">
							<xsl:apply-templates select="News" mode="TopNews"></xsl:apply-templates>
						</div>
					</div>
				</div>
			</div>
		</xsl:if>
		<xsl:if test="position() =2">
			<div class="slider-image section-kdldaoo">
				<div class="container">
					<h2 class="main-title">
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					</h2>
					<xsl:apply-templates select="News" mode="Image"></xsl:apply-templates>
				</div>
			</div>
		</xsl:if>
		<xsl:if test="position()=3">
			<div class="menu-foods section-kdldaoo">
				<div class="container">
					<h2 class="main-title">
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					</h2>
					<div class="row">
						<xsl:apply-templates select="News" mode="Menu"></xsl:apply-templates>
					</div>
				</div>
			</div>
		</xsl:if>

	</xsl:template>
	<xsl:template match="News" mode="TopNews">
		<xsl:if test="position()=1">
			<div class="Briefcontent">
				<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
			</div>
			<div class="attributes">
				<div class="row">
					<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				</div>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match="News" mode="Image">
		<xsl:if test="position() =1">
			<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>

			<div class="swiper-container">
				<div class="swiper-wrapper">
					<xsl:apply-templates select="NewsImages" mode="Slide"></xsl:apply-templates>
				</div>
				<div class="swiper-button-prev"></div>
				<div class="swiper-button-next"></div>
			</div>

		</xsl:if>


	</xsl:template>
	<xsl:template match="NewsImages" mode="Slide">
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

	<xsl:template match="News" mode="Menu">
		<div class="col-sm-6 col-lg-4">
			<div class="meal">

				<xsl:apply-templates select="NewsImages" mode="MenuItem"></xsl:apply-templates>
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				<div class="menu-name-detail">
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
				</div>
			</div>
		</div>

	</xsl:template>
	<xsl:template match="NewsImages" mode="MenuItem">

		<a href="javascript:void(0)">
			<img>
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
			</img>

		</a>
	</xsl:template>
	<xsl:template match="News" mode="Background">
		<xsl:apply-templates select="NewsImages" mode="BG"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="NewsImages" mode="BG">
		<xsl:attribute name="style">
			<xsl:text disable-output-escaping="yes">
				background-image: url(
			</xsl:text>
			<xsl:value-of select="ImageUrl"></xsl:value-of>
			<xsl:text disable-output-escaping="yes">
				);background-repeat: no-repeat;background-size:contain;background-position: right center;

			</xsl:text>
		</xsl:attribute>
	</xsl:template>
</xsl:stylesheet>
