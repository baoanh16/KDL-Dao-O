<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="khachsan-detail2 section-kdldaoo">
			<div class="container">
				<h2 class="main-title">
					<xsl:value-of disable-output-escaping="yes" select="/ProductDetail/Title"></xsl:value-of>
					<xsl:value-of select="/ProductDetail/EditLink" disable-output-escaping="yes"></xsl:value-of>
				</h2>
				<div class="row">
					<div class="col-lg-8">
						<div class="main-img">
							<xsl:apply-templates select="/ProductDetail/ProductImages" mode="Big"></xsl:apply-templates>
						</div>
						<div class="row">
							<xsl:apply-templates select="/ProductDetail/ProductImages" mode="Small">
							</xsl:apply-templates>
						</div>
					</div>
					<div class="col-lg-4">
						<div class="content">
							<xsl:value-of disable-output-escaping="yes" select="/ProductDetail/BriefContent">
							</xsl:value-of>

							<div class="row social-icons">
								<div class="fb-like" data-href="https://developers.facebook.com/docs/plugins/"
									data-width="" data-layout="button_count" data-action="like" data-size="small"
									data-show-faces="true" data-share="false"></div>
								<a class="twitter-share-button" href="https://twitter.com/intent/tweet">Tweet</a>
							</div>
							<div class="row info-contact">
								<div class="phone">
									<p>
										<a href="tel:02518626999">0251-8626999</a>
										<a href="tel:0988606006">0988 60 60
											06</a>
									</p>
								</div>
								<a class="mail" href="mailto:daoodongtruongcti@gmail.com">
									<span>daoodongtruongcti@gmail.com</span>
								</a>
							</div>
							<div class="row">
								<div class="book-room">
									<a href="/dat-phong">
										<span class="mdi mdi-pencil"></span>
										<span>Đặt
											phòng</span>
									</a>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="khachsan-info-phong">
			<div class="container-fluid no-gutters">
				<div class="row no-gutters">
					<div class="col-lg-6">
					</div>
					<div class="col-lg-6">
						<xsl:apply-templates select="/ProductDetail/ProductImages" mode="SideImage">
						</xsl:apply-templates>
					</div>
				</div>


			</div>
			<div class="container">
				<div class="row">
					<div class="col-lg-6">
						<xsl:value-of disable-output-escaping="yes" select="/ProductDetail/FullContent">
						</xsl:value-of>
					</div>
					<div class="col-lg-6"></div>
				</div>

			</div>


		</div>
		<div class="khachsan-notice section-kdldaoo">
			<div class="container">
				<xsl:apply-templates select="/ProductDetail/ProductAttributes"></xsl:apply-templates>
			</div>
		</div>
		<div class="room-type section-kdldaoo">
			<div class="container">
				<h2>Phòng khác</h2>
				<div class="row">

					<xsl:apply-templates select="/ProductDetail/ProductOther" mode="Slide"></xsl:apply-templates>

				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="ProductImages" mode="Small">
		<div class="other-img">
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
	<xsl:template match="ProductImages" mode="Big">
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
	</xsl:template>
	<xsl:template match="ProductAttributes" mode="Info">
		<xsl:if test="position() = 1">
			<xsl:value-of select="Content" disable-output-escaping="yes"></xsl:value-of>
		</xsl:if>
	</xsl:template>
	<xsl:template match="ProductAttributes" mode="Note">
		<xsl:if test="position()=2">
			<xsl:value-of select="Content" disable-output-escaping="yes"></xsl:value-of>
		</xsl:if>
	</xsl:template>
	<xsl:template match="ProductOther" mode="Slide">
		<div class="col-lg-4 col-sm-6">
			<figure>
				<div class="boximg">

					<a>
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
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
					<h3>
						<a>
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</a>
					</h3>
					<div class="caption">
						<div class="person">
							<xsl:text disable-output-escaping="yes">Số người: </xsl:text>
							<xsl:value-of select="Code"></xsl:value-of>
						</div>
						<div class="price">
							<xsl:text disable-output-escaping="yes">Giá: </xsl:text>
							<xsl:value-of select="Price"></xsl:value-of>
						</div>
					</div>
				</figcaption>
			</figure>
		</div>
	</xsl:template>


	<xsl:template match="ProductImages" mode="SideImage">
		<xsl:if test="position() =1">
			<img>
			<xsl:attribute name="src">
				<xsl:value-of select="ThumbnailUrl"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="alt">
				<xsl:value-of select="Title"></xsl:value-of>
			</xsl:attribute>
			</img>
		</xsl:if>

	</xsl:template>
	<xsl:template match="ProductAttributes">
		<h2>
			<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
		</h2>
		<div class="row">
			<xsl:value-of disable-output-escaping="yes" select="Content"></xsl:value-of>
		</div>
	</xsl:template>
</xsl:stylesheet>
