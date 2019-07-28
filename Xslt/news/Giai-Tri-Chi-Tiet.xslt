<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<div class="giaitri-detail section-kdldaoo ">
			<xsl:apply-templates select="/NewsDetail/NewsImages" mode="ImageBg"></xsl:apply-templates>
			
			<h2 class="main-title">
				<xsl:value-of select="/NewsDetail/Title" disable-output-escaping="yes"></xsl:value-of>
				<xsl:value-of select="/NewsDetail/EditLink" disable-output-escaping="yes"></xsl:value-of>
			</h2>
			<div class="container">
				<div class="row">
					<div class="col-lg-4">
						<div class="fullcontent">
							<xsl:value-of disable-output-escaping="yes" select="/NewsDetail/BriefContent"></xsl:value-of>
						</div>
					</div>
					<div class="col-lg-4">
						<div class="boximg">
							<xsl:apply-templates select="/NewsDetail/NewsImages" mode="Image1"></xsl:apply-templates>
						</div>
					</div>
				</div>
				<div class="row main-icons">
					<xsl:apply-templates select="/NewsDetail/NewsAttributes"></xsl:apply-templates>
					
				</div>
			</div>
		</div>
		<div class="slider-image section-kdldaoo">
			<h2 class="main-title">
				<xsl:value-of select="/NewsDetail/SubTitle" disable-output-escaping="yes"></xsl:value-of>
				
			</h2>
			<div class="container">
				
				<div class="swiper-container">
					<div class="swiper-wrapper">
						<xsl:apply-templates select="/NewsDetail/NewsImages" mode="Slide"></xsl:apply-templates>
					</div>
					<div class="swiper-button-prev"></div>
					<div class="swiper-button-next"></div>
				</div>
				
			</div>
		</div>
		<div class="giaitri section-kdldaoo">
			<div class="container">
				<h2 class="main-title">
					<xsl:value-of select="/NewsDetail/NewsOtherText"></xsl:value-of>
				</h2>
				<div class="row">
					
					<xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>
					
					
				</div>
			</div>
		</div>
	</xsl:template>
	
	<xsl:template match="NewsImages" mode="ImageBg">
		<xsl:if test="position()=2">
			<xsl:attribute name="style">
				<xsl:text disable-output-escaping="yes">
					background-image: url(
				</xsl:text>
				<xsl:value-of select="ImageUrl"></xsl:value-of>
				<xsl:text disable-output-escaping="yes">
					);background-repeat: no-repeat;background-size:auto;background-position: right 20%;

				</xsl:text>
			</xsl:attribute>
		</xsl:if>
	</xsl:template>
	<xsl:template match="NewsImages" mode="Image1">
		<xsl:if test="position() =1">
			<img>
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
			</img>
		</xsl:if>
	</xsl:template>
	
	
	<xsl:template match="NewsImages" mode="Slide">
		<xsl:if test="position() > 2">
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
		</xsl:if>
		
	</xsl:template>
	<xsl:template match="NewsAttributes">
		
		<div class="col-lg-3 col-md-4">
			<figure>
				<div class="boxicon">
					<xsl:value-of disable-output-escaping="yes" select="Content"></xsl:value-of>
				</div>
				<figcaption>
					<h3>
						<xsl:value-of select="Title"></xsl:value-of>
					</h3>
				</figcaption>
			</figure>
		</div>
	</xsl:template>
	<xsl:template match="NewsOther">
		<div class="col-lg-4 col-sm-6">
			<figure>
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
								<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
							</h3>
						</div>
					</div>
				</figcaption>
			</figure>
		</div>
	</xsl:template>
	
</xsl:stylesheet>
