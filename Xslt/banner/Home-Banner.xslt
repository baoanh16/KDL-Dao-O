<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="">


		<div class="home-banner">
			<div class="swiper-container">
				<div class="swiper-wrapper">
					<xsl:apply-templates select="/BannerList/Banner"></xsl:apply-templates>
				</div>
				<div class="swiper-pagination"></div>
				<div class="home-datphong">
					<div class="container">
						<div class="row">
							<div class="form-datphong">
								<h2>Đặt phòng</h2>
								<div class="wrap-form">
									<div class="form-group">
										<label>Ngày đặt phòng</label>
										<input type="text"></input>
									</div>
									<div class="form-group">
										<label>Ngày trả phòng</label>
										<input type="text"></input>
									</div>
								</div>
								<div class="select-main">
									<div class="select-detail">
										<h4>Số phòng</h4>
										<select>
											<option>1</option>
											<option>2</option>
											<option>3</option>
											<option>4</option>
										</select>
									</div>
									<div class="select-detail">
										<h4>Số người lớn</h4>
										<select>
											<option>1</option>
											<option>2</option>
											<option>3</option>
											<option>4</option>
										</select>
									</div>
									<div class="select-detail">
										<h4>Số trẻ em</h4>
										<select>
											<option>1</option>
											<option>2</option>
											<option>3</option>
											<option>4</option>
										</select>
									</div>
								</div>
								<div class="btn-submit">
									<a href="">
										<span>Đặt phòng</span>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="Banner">
		<div class="swiper-slide">
			<figure>
				<div class="boximg">
					<img>
					<xsl:attribute name="alt">
						<xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					</img>
				</div>

			</figure>
			<div class="container">
				<div class="row">
					<figcaption>
						<h3>
							<xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
						</h3>
					</figcaption>
				</div>
			</div>
		</div>


	</xsl:template>
</xsl:stylesheet>
