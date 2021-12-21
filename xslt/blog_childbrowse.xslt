<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>

  <xsl:decimal-format name="comma-dec" decimal-separator="," grouping-separator="."/>
  <xsl:decimal-format name="dot-dec" decimal-separator="." grouping-separator=","/>
  <xsl:variable name="smallcase" select="'abcdefghijklmnopqrstuvwxyz'" />
  <xsl:variable name="uppercase" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'" />
  <xsl:variable name="lowerCode">
    <xsl:value-of select="translate(/sqroot/body/bodyContent/browse/info/code, $uppercase, $smallcase)"/>
  </xsl:variable>

  <xsl:template match="/">
    <h5 class="comment-title">Comments</h5>

    <ol class="comment-list">
      <xsl:apply-templates select="sqroot/body/bodyContent/browse/content/row"/>
    </ol>
    
  </xsl:template>

  <xsl:template match="sqroot/body/bodyContent/browse/header">
    
  </xsl:template>

  <xsl:template match="column">

  </xsl:template>

  <xsl:template match="sqroot/body/bodyContent/browse/content/row">
    <li class="comment">
      <article class="comment-wrap">
        <div class="avatar">
          <img src="ophcontent/themes/themesix/images/comment-01.jpg" alt="" />
        </div>
        <div class="comment-content">
          <div class="comment-meta">
            <div class="comment-time">
              <xsl:value-of select="fields/field[@caption='commentDate']/." />
            </div>
            <div class="comment-author">
              <h4>
                <xsl:value-of select="fields/field[@caption='name']/." />
              </h4>
            </div>
          </div>
          <div class="comment-text">
            <p>
              <xsl:value-of select="fields/field[@caption='comment']/." />
            </p>
          </div>
        </div>
      </article>
    </li>


  </xsl:template>

  <xsl:template match="fields/field">
    
  </xsl:template>

</xsl:stylesheet>
