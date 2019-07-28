<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<h2 class="main-title">
			<xsl:value-of select="/NewsList/ModuleTitle" disable-output-escaping="yes"></xsl:value-of>
		</h2>
		<div class="row">
			<div class="col-lg-12 col-md-8">
				<xsl:apply-templates select="/NewsList/News" mode="Video1"></xsl:apply-templates>
			</div>
			<div class="col-lg-12 col-md-4">
				<div class="row">
					<xsl:apply-templates select="/NewsList/News" mode="Video2"></xsl:apply-templates>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="Video1">
		<xsl:if test="position() = 1">
			<div class="main-video">
				<figure>
					<div class="image">
						<div class="boximg">
							<a data-fancybox="">
								<xsl:attribute name="href">
									<xsl:value-of select="BriefContent"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="title">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>
								
								<img>
									<xsl:attribute name="src">
										<xsl:value-of select="ImageUrl"></xsl:value-of>
									</xsl:attribute>
									<xsl:attribute name="alt">
										<xsl:value-of select="Title"></xsl:value-of>
									</xsl:attribute>
								</img>
								<div class="play-btn">
									<img src="/Data/Sites/1/media/home/play-btn.png" alt="" />
								</div>
							</a>
						</div>
						<figcaption>
							<h3>
								<xsl:value-of select="Title"></xsl:value-of>
								<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
							</h3>
						</figcaption>
					</div>
				</figure>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match="News" mode="Video2">
		<xsl:if test="position() > 1">
			<div class="col-lg-6 col-md-12 col-sm-6">
				<div class="other-video">
					<figure>
						<div class="boximg">
							<a data-fancybox="">
								<xsl:attribute name="href">
									<xsl:value-of select="BriefContent"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="title">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>
								
								<img>
									<xsl:attribute name="src">
										<xsl:value-of select="ImageUrl"></xsl:value-of>
									</xsl:attribute>
									<xsl:attribute name="alt">
										<xsl:value-of select="Title"></xsl:value-of>
									</xsl:attribute>
								</img>
								<div class="play-btn">
									<img src="/Data/Sites/1/media/home/play-btn.png" alt="" />
								</div>
							</a>
						</div>
					</figure>
				</div>
			</div>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>