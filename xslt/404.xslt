<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl" >

  <xsl:template match="/">
    <xsl:apply-templates select="sqroot" />
  </xsl:template>


	<xsl:template match="/sqroot/header">

      <section class="page-title parallax" style="background-image: url('ophcontent/themes/themesix/images/404-not-found.jpg'); ">
        <div class="title-heading">
          <div class="container">
            <div class="row">
              <div class="col-md-12">
                <div class="box-title style1">
                  <h2 style="color:#000000cc; margin-bottom:10px;">
                    <xsl:value-of select="info/title/." />
                  </h2>
                  <p style="color:#000000cc; font-size:25px; letter-spacing: 3px; ">
                    <xsl:value-of select="code/titleTag/." />
                  </p>
                  <!--<div class="breadcrumbs">
                    <ul>
                      <li>
                        <a href="index.html" title="">Home</a>
                        <i class="fa fa-angle-right" aria-hidden="true"></i>
                      </li>
                      <li>
                        <a href="element.html" title="">Element</a>
                        <i class="fa fa-angle-right" aria-hidden="true"></i>
                      </li>
                      <li>
                        <a href="#" title="">Contact Simple</a>
                      </li>
                    </ul>
                  </div>-->
                  <!-- /.breadcrumbs -->
                </div>
                <!-- /.box-title -->
              </div>
              <!-- /.col-md-12 -->
            </div>
            <!-- /.row -->
          </div>
          <!-- /.container -->
        </div>
        <!-- /.title-heading -->
        <div class="overlay-black"></div>
      </section>
      <!-- /.page-title parallax -->
	</xsl:template>


	<xsl:template match="/sqroot/body">
    <div class="divider100" />
    <div class="flat-contact-simple">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="wrap-error center">
              <!--<div class="header-error">
                <img src="ophcontent/themes/themesix/images/404.jpg" alt="" />
              </div>-->
              <div class="content-error">
                <h3 class="font-weight-3">Opps! This page Could Not Be Found!</h3>
                <p class="font-size-16">Sorry bit the page you are looking for does not exist, have been removed or name changed</p>
                <div class="btn-more">
                  <a href="index.aspx" class="base border-radius-2 color-white background-blue" title="">GO TO HOMEPAGE</a>
                </div>
              </div>
              <!-- /.content-error -->
            </div>
            <!-- /.wrap-error -->
          </div>
            
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container -->
    </div>
    <div class="divider100" />
  </xsl:template>

	<xsl:include href="_base.xslt" />
</xsl:stylesheet>