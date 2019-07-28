<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
  </xsl:template>

  <xsl:template match="Zone">
    <xsl:choose>
        <xsl:when test="position()=1">
            <div class="hoinghi section-kdldaoo">
                <div class="container">
                    <h2 class="main-title">
                        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                    </h2>
                    <div class="row">
                        <xsl:apply-templates select="News" mode='News1'></xsl:apply-templates>
                    </div>
                </div>
            </div>
        </xsl:when>
        <xsl:when test="position()=2">
            <div class="phongchua section-kdldaoo">
                <div class="container">
                    <h2 class="main-title">
                        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                    </h2>
                    <div class="row">
                        <xsl:apply-templates select="News" mode='News2'></xsl:apply-templates>
                    </div>
                </div>
            </div>
        
        </xsl:when>
        <xsl:when test="position()=3">
            <div class="image-hoinghi section-kdldaoo">
                <div class="container">
                    <h2 class="main-title"><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></h2>
                    <div class="row">
                        <xsl:apply-templates select="News" mode='News3'></xsl:apply-templates>
                    </div>
                </div>
            </div>
        </xsl:when>
    </xsl:choose>
  </xsl:template>
  <xsl:template match="News" mode='News2'>
    <div class="col-lg-3 col-sm-6">
        <div class="items">
            <figure>
                <div class="boximg">
                    <img class="lazyload">
                        <xsl:attribute name="src">
                            <xsl:value-of select="ImageUrl"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="alt">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                    </img>
                </div>
                <figcaption>
                    <h3><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></h3>
                    <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
                </figcaption>
            </figure>
        </div>
    </div>
  </xsl:template>
  <xsl:template match="News" mode='News1'>
    <div class="col-lg-5">
        <div class="boximg">
            <img src="/Data/Sites/1/media/hoinghi/block-1.png" alt=""></img>
        </div>
    </div>
    <div class="col-lg-7">
        <div class="fullcontent">
            <p>
                <xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
            </p>
        </div>
    </div>
  </xsl:template>
  <xsl:template match="News" mode='News3'>
    <xsl:if test="position()=1">
        <xsl:text disable-output-escaping="yes">&lt;div class="col-lg-6"&gt;</xsl:text>
        <xsl:text disable-output-escaping="yes">&lt;div class="row"&gt;</xsl:text>
        <xsl:text disable-output-escaping="yes">&lt;div class="col-12"&gt;</xsl:text>
    </xsl:if>
    <xsl:if test="position()=2">
        <xsl:text disable-output-escaping="yes">&lt;div class="col-sm-6"&gt;</xsl:text>
    </xsl:if>
    <xsl:if test="position()=3">
        <xsl:text disable-output-escaping="yes">&lt;div class="col-sm-6"&gt;</xsl:text>
    </xsl:if>
    
    <xsl:if test="position()=4">
        <xsl:text disable-output-escaping="yes">&lt;div class="col-lg-6"&gt;</xsl:text>
        <xsl:text disable-output-escaping="yes">&lt;div class="row"&gt;</xsl:text>
        <xsl:text disable-output-escaping="yes">&lt;div class="col-sm-6"&gt;</xsl:text>
    </xsl:if>
    <xsl:if test="position()=5">
        <xsl:text disable-output-escaping="yes">&lt;div class="col-sm-6"&gt;</xsl:text>
    </xsl:if>
    <xsl:if test="position()=6">
        <xsl:text disable-output-escaping="yes">&lt;div class="col-12"&gt;</xsl:text>
    </xsl:if>
    
    <div class="boximg">
        <a>
			<xsl:attribute name="href">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="data-fancybox">
				<xsl:text disable-output-escaping="yes">Gallery</xsl:text>
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
    <xsl:if test="position() =1 ">
        <xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
    </xsl:if>
    <xsl:if test="position() =2 ">
        <xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
    </xsl:if>
    <xsl:if test="position() =3 ">
        <xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
        <xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
        <xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
    </xsl:if>
    <xsl:if test="position() =4 ">
        <xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
    </xsl:if>
    <xsl:if test="position() =5 ">
        <xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
    </xsl:if>
    <xsl:if test="position() =6 ">
        <xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
        <xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
        <xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
    </xsl:if>
  </xsl:template>
</xsl:stylesheet>