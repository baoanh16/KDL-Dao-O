<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<h2 class="main-title">
			<xsl:value-of select="/NewsList/ModuleTitle" disable-output-escaping="yes"></xsl:value-of>
		</h2>
		<div class="row">
			<div class="col-lg-6 col-md-8">
				<xsl:apply-templates select="/NewsList/News" mode="News1"></xsl:apply-templates>
			</div>
			<div class="col-lg-6 col-md-4">
				<div class="row">
					<xsl:apply-templates select="/NewsList/News" mode="News2"></xsl:apply-templates>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="News1">
		<xsl:if test="position() = 1">
			<div class="main-news">
				<figure>
					<div class="boximg">
						<a>
							<xsl:attribute name="href">
								<xsl:value-of disable-output-escaping="yes" select="Url"></xsl:value-of>
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
					</div>
					<figcaption>
						<date>
							<xsl:value-of select="CreatedDate"></xsl:value-of>
						</date>
						<h3>
							<a>
								<xsl:attribute name="href">
									<xsl:value-of disable-output-escaping="yes" select="Url"></xsl:value-of>
								</xsl:attribute>
								<xsl:value-of select="Title"></xsl:value-of>
							</a>
							<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
						</h3>
						<p>
							<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
						</p>
					</figcaption>
				</figure>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match="News" mode="News2">
		<xsl:if test="position() > 1">
			<div class="col-lg-12">
				<div class="other-news">
					<figure>
						<div class="boximg">
							
							<a>
								<xsl:attribute name="href">
									<xsl:value-of disable-output-escaping="yes" select="Url"></xsl:value-of>
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
						</div>
						<figcaption>
							<date>
								<xsl:value-of select="CreatedDate"></xsl:value-of>
							</date>
							<h3>
								<a>
									<xsl:attribute name="href">
										<xsl:value-of disable-output-escaping="yes" select="Url"></xsl:value-of>
									</xsl:attribute>
									<xsl:value-of select="Title"></xsl:value-of>
								</a>
								<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
							</h3>
						</figcaption>
					</figure>
				</div>
			</div>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>