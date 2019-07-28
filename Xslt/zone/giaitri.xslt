<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	
	<xsl:template match="/">
		<div class="giaitri section-kdldaoo">
			<div class="container">
				<h2 class="main-title">
					<xsl:value-of select="/ZoneList/ModuleTitle" disable-output-escaping="yes"></xsl:value-of>
				</h2>
				<p>
					<xsl:value-of select="/ZoneList/Description" disable-output-escaping="yes"></xsl:value-of>
				</p>
				<div class="row">
					<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
				</div>
			</div>
		</div>
	</xsl:template>
	<!-- <xsl:template match="Zone">
		<xsl:if test="IsActive='true'">
			<xsl:apply-templates select="Zone" mode="Child"></xsl:apply-templates>
		</xsl:if>
	</xsl:template> -->
	<xsl:template match="Zone">
		<div class="col-lg-4 col-sm-6">
			<figure>
				<div class="boximg">
					<a>
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="target">
							<xsl:value-of select="Target"></xsl:value-of>
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
					</a>
				</div>
				<figcaption>
					<div class="box-caption">
						<img src="/Data/Sites/1/media/giaitri/caption-img.png" alt=""></img>
						<div class="caption">
							<h3>
								<a>
									<xsl:attribute name="href">
										<xsl:value-of select="Url"></xsl:value-of>
									</xsl:attribute>
									<xsl:attribute name="target">
										<xsl:value-of select="Target"></xsl:value-of>
									</xsl:attribute>
									<xsl:attribute name="title">
										<xsl:value-of select="Title"></xsl:value-of>
									</xsl:attribute>
									<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
								</a>
							</h3>
						</div>
					</div>
				</figcaption>
			</figure>
		</div>
	</xsl:template>
</xsl:stylesheet>