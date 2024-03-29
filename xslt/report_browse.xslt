﻿<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="xml" indent="yes"/>

  <xsl:variable name="smallcase" select="'abcdefghijklmnopqrstuvwxyz'" />
  <xsl:variable name="uppercase" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'" />

  <xsl:variable name="code" select="sqroot/body/bodyContent/query/info/code" />
  <xsl:variable name="desc" select="sqroot/body/bodyContent/query/info/description" />
  <xsl:variable name="type" select="translate(sqroot/body/bodyContent/query/info/type, $uppercase, $smallcase)"/>
  <xsl:variable name="sql" select="sqroot/body/bodyContent/query/info/querySQL" />
  <xsl:variable name="reportName" select="sqroot/body/bodyContent/query/info/reportName" />
  <xsl:variable name="isPDF" select="sqroot/body/bodyContent/query/info/permission/allowPDF" />
  <xsl:variable name="isXLS" select="sqroot/body/bodyContent/query/info/permission/allowXLS" />
  <xsl:variable name="allowAccess" select="sqroot/body/bodyContent/query/info/permission/allowAccess" />
  <xsl:variable name="par">
    <xsl:for-each select="sqroot/body/bodyContent/query/queryPages/queryPage/querySections/querySection/queryCols/queryCol/queryRows/.">
      <xsl:text>**</xsl:text>
      <xsl:value-of select="queryRow/fields/field/@fieldName" />
      <xsl:text>**</xsl:text>
      <xsl:text>,</xsl:text>
    </xsl:for-each>
  </xsl:variable>

  <xsl:template match="/">
    <script>
      loadScript('OPHContent/cdn/daterangepicker/daterangepicker.js');
      loadScript('OPHContent/cdn/select2/select2.full.min.js');
      var deferreds = [];
    </script>
    
    

    <!-- Main content -->
    <section class="flat-row flat-contact-form style5">
      <div class="container">
        <xsl:choose>
          <xsl:when test="$allowAccess = 1">
            <xsl:if test="sqroot/body/bodyContent/query/queryPages/queryPage/querySections/querySection">
              <xsl:apply-templates select="sqroot/body/bodyContent/query/queryPages/queryPage/querySections/querySection"/>
            </xsl:if>
            <div class="row" id="reportButton">
              <div class="col-md-12" style="margin-bottom:30px;margin-top:30px">
                <div style="text-align:center">
                  <xsl:if test="$isPDF = 1">
                    <button id="btnPDF" class="btn btn-orange-a" onclick="genReport('{$code}','{$par}', 1,'{$sql}','{$reportName}');">SHOW PDF</button>&#160;
                  </xsl:if>
                  <xsl:if test="$isXLS = 1">
                    <button id="btnXLS" class="btn btn-orange-a" onclick="genReport('{$code}','{$par}', 0,'{$sql}','{$reportName}');">SHOW XLS</button>&#160;
                  </xsl:if>
                </div>
              </div>
            </div>
          </xsl:when>
          <xsl:otherwise>
            <div class="callout callout-danger">
              <h4>Unauthority Access!</h4>
              <p>You don't have the right access. Please ask the administrator if you feel that you already have the right access into this module.</p>
            </div>
          </xsl:otherwise>
        </xsl:choose>

      </div>
    </section>
    <script>
      $(function () {
      $('.datepicker').datepicker({ 
      autoclose: true
      });

      });

      $.when.apply($,deferreds).done(function() {
      preview(1,getCode(), null,'formheader');
      });
    </script>
  </xsl:template>

  <xsl:template match="sqroot/body/bodyContent/query/queryPages/queryPage/querySections/querySection">
    <div class="row" id="reportParameter" >
      <div class="col-md-12">
        <xsl:if test="@rowTitle">
          <h4 style="text-align:center;">
            <xsl:value-of select="@rowTitle"/>
          </h4>
          <br/>
        </xsl:if>
        <xsl:apply-templates select="queryCols/queryCol"/>
        &#160;
      </div>
    </div>
  </xsl:template>

  <xsl:template match="queryCols/queryCol">
    <div class="row">
      <div class="col-md-2">&#xA0;</div>
      <div class="col-md-8">
        <xsl:apply-templates select="queryRows/queryRow"/>
      </div>
      <div class="col-md-2">&#xA0;</div>
    </div>
  </xsl:template>

  <xsl:template match="queryRows/queryRow ">
    <xsl:apply-templates select="fields/field"/>
  </xsl:template>

  <xsl:template match="fields/field">
    <div class="form-group enabled-input">
      <form role="form" id="formheader">
        <xsl:if test="textBox">
          <xsl:apply-templates select="textBox"/>
        </xsl:if>
        <xsl:if test="dateBox">
          <xsl:apply-templates select="dateBox"/>
        </xsl:if>
        <xsl:if test="checkBox">
          <xsl:apply-templates select="checkBox"/>
        </xsl:if>
        <xsl:if test="comboBox">
          <xsl:apply-templates select="comboBox"/>
        </xsl:if>
      </form>
    </div>
  </xsl:template>

  <xsl:template match="checkBox">
    <!--Supaya bisa di serialize-->
    <input type="hidden" name="{../@fieldName}" id="hidden{../@fieldName}" value="0"/>
    <!--Supaya bisa di serialize-->


    <input type="checkbox"  value="{value}" id ="{../@fieldName}"  name="{../@fieldName}" onchange="checkCB('{../@fieldName}');preview({preview/.},getCode(), null,'formheader');">
      <xsl:if test="value=1">
        <xsl:attribute name="checked">checked</xsl:attribute>
      </xsl:if>
      <xsl:if test="../@isEditable=0">
        <xsl:attribute name="disabled">disabled</xsl:attribute>
      </xsl:if>

    </input>

    <label id="{../@fieldName}caption">
      <xsl:value-of select="titleCaption"/>
    </label>

  </xsl:template>

  <xsl:template match="textBox">
    <label id="{../@fieldName}caption">
      <xsl:value-of select="titleCaption"/>

    </label>


    <input type="text" class="form-control" Value="{value}" name="{../@fieldName}" onblur="preview({preview/.},getCode(), null,'formheader');" id ="{../@fieldName}">
      <xsl:if test="../@isEditable=0">
        <xsl:attribute name="disabled">disabled</xsl:attribute>
      </xsl:if>
    </input>
  </xsl:template>

  <xsl:template match="dateBox">
    <label id="{../@fieldName}caption">
      <xsl:value-of select="titleCaption"/>
    </label>
    <div class="input-group date">
      <div class="input-group-addon">
        <ix class="fa fa-calendar"></ix>
      </div>
      <input type="text" class="form-control pull-right datepicker" id ="{../@fieldName}" name="{../@fieldName}" Value="{value}" onblur="preview({preview/.},getCode(), null,'formheader');" >
        <xsl:if test="../@isEditable=0">
          <xsl:attribute name="disabled">disabled</xsl:attribute>
        </xsl:if>
      </input>
    </div>
  </xsl:template>

  <xsl:template match="comboBox">
    <label id="{../@fieldName}caption">
      <xsl:value-of select="titleCaption"/>
    </label>
    <select class="form-control select2" style="width: 100%;" name="{../@fieldName}" id="{../@fieldName}" onchange="preview({preview/.},getCode(), null,'formheader');" >
      <xsl:if test="../@isEditable=0">
        <xsl:attribute name="disabled">disabled</xsl:attribute>
      </xsl:if>
      <option value="NULL">--  Please Select --</option>
    </select>

    <script>
      $("#<xsl:value-of select="../@fieldName"/>").select2({
      ajax: {
      url:"OPHCORE/api/msg_autosuggest.aspx",
      delay : 0,
      data: function (params) {
      var query = {
      code:"<xsl:value-of select="/sqroot/header/info/code/id/."/>",
      colkey:"<xsl:value-of select="../@fieldName"/>",
      search: params.term,
	  wf1value: ('<xsl:value-of select='whereFields/wf1'/>'=='' || $("#<xsl:value-of select='whereFields/wf1'/>").val() == undefined ? "" : $("#<xsl:value-of select='whereFields/wf1'/>").val()),
	  wf2value: ('<xsl:value-of select='whereFields/wf2'/>'=='' || $("#<xsl:value-of select='whereFields/wf2'/>").val() == undefined ? "" : $("#<xsl:value-of select='whereFields/wf2'/>").val()),
      page: params.page
      }
      return query;
      },
      dataType: 'json',

      }
      });
      <xsl:if test="value!=''">
        deferreds.push(
        autosuggestSetValue('<xsl:value-of select="../@fieldName"/>',"<xsl:value-of select="code"/>","<xsl:value-of select="id"/>","<xsl:value-of select="name"/>","<xsl:value-of select='key'/>","<xsl:value-of select='value'/>")
        );
      </xsl:if>

    </script>


  </xsl:template>

</xsl:stylesheet>
