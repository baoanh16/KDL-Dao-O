<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	
	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="Zone">
		<xsl:if test="position()=1">
			<div class="nhahang-block-1">
				<div class="container">
					<div class="row">
						<div class="col-md-6">
							<div class="block-1">
								<h3>
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
								</h3>
								<p>
									<xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
								</p>
								<div class="view-more">
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
										<span>Xem thêm</span>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</xsl:if>
		<xsl:if test="position()=2">
			<div class="nhahang-block-2">
				<div class="container">
					<div class="row">
						<div class="col-md-6">
							<div class="block-2">
								<h3>
									
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
									
								</h3>
								<p>
									<xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
								</p>
								<div class="view-more">
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
										<span>Xem thêm</span>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</xsl:if>
		
	</xsl:template>
	
</xsl:stylesheet>
