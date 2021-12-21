<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">

  <xsl:output method="xml" indent="yes"/>   

  <xsl:template match="/sqroot/body/bodyContent/form/info">
    <ul class="treeview-menu view-left-sidebar info">
      <li>

        <xsl:if test="state/statuscomment/.">
          <dl>
            <dt>
              <span style="font-weight:bold;">Status Comment</span>
              <br/>
              <xsl:value-of select="state/statuscomment"/>
            </dt>
          </dl>
        </xsl:if>
        <xsl:if test="document/createdDate/.">
          <dl>
            <dt>
              <span style="font-weight:bold;">Created On</span>
              <br/>
              <xsl:value-of select="document/createdDate"/>
            </dt>
          </dl>
        </xsl:if>
        <xsl:if test="document/createdUser/.">
          <dl>
            <dt>
              <span style="font-weight:bold;">Created By</span>
              <br/>
              <xsl:value-of select="document/createdUser"/>
            </dt>
          </dl>
        </xsl:if>
        <xsl:if test="document/updatedDate/.">
          <dl>
            <dt>
              <span style="font-weight:bold;">Updated On</span>
              <br/>
              <xsl:value-of select="document/updatedDate"/>
            </dt>
          </dl>
        </xsl:if>
        <xsl:if test="document/updatedUser/.">
          <dl>
            <dt>
              <span style="font-weight:bold;">Updated By</span>
              <br/>
              <xsl:value-of select="document/updatedUser"/>
            </dt>
          </dl>
        </xsl:if>
        <xsl:if test="document/isDelete/. = 1">
          <xsl:if test="document/isDeleted/.">
            <dl>
              <dt>
                <span style="font-weight:bold;">Status Document</span>
                <br/>
                Deleted
              </dt>
            </dl>
          </xsl:if>
          <xsl:if test="document/deletedDate/.">
            <dl>
              <dt>
                <span style="font-weight:bold;">Deleted On</span>
                <br/>
                <xsl:value-of select="document/deletedDate"/>
              </dt>
            </dl>
          </xsl:if>
          <xsl:if test="document/deletedUser/.">
            <dl>
              <dt>
                <span style="font-weight:bold;">Deleted By</span>
                <br/>
                <xsl:value-of select="document/deletedUser"/>
              </dt>
            </dl>
          </xsl:if>
        </xsl:if>
      </li>
    </ul>
  </xsl:template>

  <xsl:template match="/sqroot/body/bodyContent/form/approvals">
    <ul class="treeview-menu view-left-sidebar info">
      <li id="approval-info">
        
          <xsl:apply-templates select="approval"/>
        
      </li>
    </ul>
  </xsl:template>

  <xsl:template match="approval">
    <dl style="margin-bottom:10px">
      <dt>Level <xsl:value-of select="@level"/></dt>
      <dd style="font-weight:bold">
        <xsl:value-of select="name"/>
        <xsl:if test="delegateName"> 
          deletegated to <xsl:value-of select="delegateName"/>
        </xsl:if>
      </dd>
      <xsl:if test="@status='400'"> 
        <dt>Status</dt>
        <dd style="font-weight:bold">
          Approved on <xsl:value-of select="date"/>
        </dd>
      </xsl:if>
    </dl>
  </xsl:template>

  <xsl:template match="/sqroot/body/bodyContent/form/talks/talk">
    <xsl:variable name="chatRight">
      <xsl:if test="@itsMe=1">right</xsl:if>
    </xsl:variable>
    <div class="direct-chat-msg {$chatRight}">
      <div class="direct-chat-info clearfix">
        <span class="direct-chat-name pull-right">
          <xsl:value-of select="@talkUser"/>
        </span>
        <span class="direct-chat-timestamp pull-left" title="{@talkDate}">
          <xsl:value-of select="@talkDateCaption"/>
        </span>
      </div>
      <!-- /.direct-chat-info -->
      <img class="direct-chat-img" src="OPHContent/documents/{/sqroot/header/info/suba}/{@talkUserProfile}" alt="{talkUser}"/>
      <!-- /.direct-chat-img -->
      <div class="direct-chat-text">
        <xsl:value-of select="@comment"/>
      </div>
      <!-- /.direct-chat-text -->
    </div>

  </xsl:template>

  <xsl:template match="/sqroot/widgets/widget[@code='TALK']/talks">
    <xsl:apply-templates select="talk"/>
  </xsl:template>

  <xsl:template match="talk">
    <dt>
      <xsl:value-of select="createduser"/>
    </dt>
    <dd>
      <xsl:value-of select="createddate"/>
    </dd>
    <dd>
      <xsl:value-of select="doccomment"/>
    </dd>
    <dd>
      <xsl:value-of select=" docattachment"/>
    </dd>
  </xsl:template>



</xsl:stylesheet>