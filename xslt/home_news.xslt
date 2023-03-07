<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl" >

  <xsl:template match="/">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="flat-title">
            <h2>Latest News</h2>
          </div>
        </div>
      </div>
      <div class="row" id="content-post1">

        <xsl:apply-templates select="sqroot/body/bodyContent/browse/content/row" />
        
      </div>
    </div>

    <script>
      replaceContent()
    </script>

  </xsl:template>


  <xsl:template match="sqroot/body/bodyContent/browse/content/row">
    <div class="col-md-4">
      <div class="imagebox style2 v4 border">
        <div class="imagebox-image">
          <img src="ophcontent/documents/invoiceportal/{fields/field[@caption='primaryImg']/.}" style="height:200px; width:100%" alt="" />
        </div>
        <div class="imagebox-content">
          <h6>
            <a href="#" title="">
              <xsl:value-of select="fields/field[@caption='blogTitle']/." />
            </a>
          </h6>
          <div style=" height: 50px !important; overflow: hidden;text-overflow: '----';">
            <xsl:value-of select="fields/field[@caption='blogContent']/." />
          </div>
          <div class="more-link">
            <a href="?code=blog&amp;guid={@GUID}" title="">READ MORE</a>
          </div>
        </div>
      </div>
    </div>
  </xsl:template>
</xsl:stylesheet>