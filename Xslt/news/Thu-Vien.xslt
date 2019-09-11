<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">

		<section class="home-gallery">
			<h2 class="main-title">
				<xsl:value-of select="/NewsList/ModuleTitle" disable-output-escaping="yes"></xsl:value-of>
			</h2>
			<div class="swiper-container">
				<div class="swiper-wrapper">

					<xsl:apply-templates select="/NewsList/News" mode="Image"></xsl:apply-templates>
				</div>
				<div class="swiper-button-prev"></div>
				<div class="swiper-button-next"></div>
			</div>
		</section>


	</xsl:template>
	<xsl:template match="News" mode="Image">

		<div class="swiper-slide">
			<div class="wrapper">
				<a class="thumbnail">
					<xsl:attribute name="data-fancybox">
						<xsl:text>news-image-</xsl:text>
						<xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="href">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="Title">
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					</xsl:attribute>

					<img>
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
					</img>
				</a>
				<xsl:apply-templates select="NewsImages">
					<xsl:with-param select="position()" name="NewsPosition" />
				</xsl:apply-templates>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="NewsImages">
		<xsl:param name="NewsPosition"></xsl:param>
		<xsl:if test="position()>1">
			<a style="display:none;">
				<xsl:attribute name="data-fancybox">
					<xsl:text>news-image-</xsl:text>
					<xsl:value-of disable-output-escaping="yes" select="$NewsPosition"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="href">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="Title">
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
				</xsl:attribute>

				<img>
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
				</img>
			</a>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>
