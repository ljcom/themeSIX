﻿<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="xml" indent="yes"/>

  <xsl:variable name="smallcase" select="'abcdefghijklmnopqrstuvwxyz'" />
  <xsl:variable name="uppercase" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'" /> 
  <xsl:variable name="code" select="/sqroot/body/bodyContent/info/code" />
  <xsl:variable name="desc" select="/sqroot/body/bodyContent/info/description" />
  <xsl:variable name="exportMode">
    <xsl:choose>
      <xsl:when test="/sqroot/body/bodyContent/info/exportMode=0 or /sqroot/body/bodyContent/info/exportMode='0'">0</xsl:when>
      <xsl:otherwise>1</xsl:otherwise>
    </xsl:choose>
  </xsl:variable>
  <xsl:variable name="allowExport" select="/sqroot/body/bodyContent/info/permission/allowExport" />
  <xsl:variable name="parameter" select="/sqroot/body/bodyContent/parameters/parameter" />
  <xsl:variable name="xmlParameter" select="/sqroot/body/bodyContent/parameters/xmlParameter" />

  <xsl:template match="/">
    <script>
      loadScript('OPHContent/cdn/daterangepicker/daterangepicker.js');
      loadScript('OPHContent/cdn/select2/select2.full.min.js');
      $('.datepicker').datepicker({autoclose: true});
      var deferreds = [];
      
      <xsl:choose>
        <xsl:when test="sqroot/body/bodyContent/form/rows/row/fields/field">
          var withParam = 1;
        </xsl:when>
        <xsl:otherwise>
          var withParam = 0;
        </xsl:otherwise>
      </xsl:choose>

      //UPLOAD FUNCTIONS
      export_init('<xsl:value-of select="$code"/>', withParam, '<xsl:value-of select="$exportMode"/>', '<xsl:value-of select="$parameter" />', '<xsl:value-of select="$xmlParameter" />');
    </script>

    <!-- Main content-->
    <section class="flat-row flat-contact-form style5">
      <div class="container">
        <script>
          $('#headertitle').html('Export Data <xsl:value-of select="$desc"/>')
        </script>
        <div class="breadcrumbs">
          <ul style="text-align:center;">
            <li>
              <a href="?" title="">Home</a>
              <i class="fa fa-angle-right" aria-hidden="true">&#xA0;</i>
            </li>
            <li>
              <a href="?code={$code}">
                <xsl:value-of select="sqroot/header/info/code/name/." /> List
                <i class="fa fa-angle-right" aria-hidden="true">&#xA0;</i>
              </a>
            </li>
            <li>
              <a href="#"  style="pointer-events: none;">
                Export Data <xsl:value-of select="$desc"/>
              </a>
            </li>
          </ul>
        </div>
        
      
        <xsl:choose>
          <xsl:when test="sqroot/body/bodyContent/form/rows/row/fields/field">
            <div class="row">
              <div class="col-md-12">
                <div id="exportNavTab" class="nav-tabs-custom">
                  <!--Menu Tab-->
                  <ul class="nav nav-tabs">
                    <li class="active">
                      <a href="#tabDownload" data-toggle="tab">Download Template</a>
                    </li>
                    <li>
                      <a href="#tabExport" data-toggle="tab" >Upload Template</a>
                    </li>
                  </ul>

                  <div class="tab-content">
                    <!--Download-->
                    <div class="active tab-pane" id="tabDownload">
                      <div class="row">
                        <div class="col-md-12">
                          <button id="btn_imp" class="btn btn-orange-a" onclick="downloadModule('{$code}', {$exportMode});">Download Template</button>&#160;
                        </div>
                      </div>
                    </div>
                    <!--Export-->
                    <div class="tab-pane" id="tabExport">
                      <xsl:if test="sqroot/body/bodyContent/form/rows/row/fields/field">
                        <div class="row">
                          <div class="col-md-6">
                            <form role="form" id="formExport">
                              <xsl:apply-templates select="sqroot/body/bodyContent/form/rows/row" />
                            </form>
                          </div>
                        </div>
                      </xsl:if>
                      <div class="row">
                        <div class="col-md-12">
                          <button id="btn_exp" class="btn btn-orange-a" onclick="javascript:$('#import_hidden').click();" data-loading-text="Exporting File...(Please wait)" autocomplete="off">
                            Upload Template Data
                          </button>&#160;
                          <input id ="import_hidden" name="import_hidden" type="file" style="visibility: hidden; width: 0; height: 0;" multiple="" />

                          <div id="progressBox" style="margin-top:20px;display:none;">
                            <p>
                              Uploading File: <code>No File</code>
                            </p>
                            <div class="progress progress-xs">
                              <div id="exportProgress" class="progress-bar progress-bar-warning progress-bar-striped" role="progressbar" aria-valuenow="5" aria-valuemin="20" aria-valuemax="1000" style="width: 1%">
                                <span class="sr-only">5% Complete</span>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </xsl:when>
          <xsl:otherwise>
            <div class="row">
              <div class="col-md-12" style="margin-bottom:30px;margin-top:10px">
                <div style="text-align:center">
                  <button id="btn_imp" class="btn btn-orange-a" onclick="downloadModule('{$code}', {$exportMode});">Download Template</button>&#160;
                  <button id="btn_exp" class="btn btn-orange-a" onclick="javascript:$('#import_hidden').click();" data-loading-text="Exporting File...(Please wait)" autocomplete="off">
                    Upload Template Data
                  </button>&#160;
                  <input id ="import_hidden" name="import_hidden" type="file" style="visibility: hidden; width: 0; height: 0;" multiple="" />
                </div>
                <div id="progressBox" style="margin-top:20px;display:none;">
                  <p>
                    Uploading File: <code>No File</code>
                  </p>
                  <div class="progress progress-xs">
                    <div id="exportProgress" class="progress-bar progress-bar-warning progress-bar-striped active" role="progressbar" aria-valuenow="5" aria-valuemin="20" aria-valuemax="1000" style="width: 1%">
                      <span class="sr-only">5% Complete</span>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </xsl:otherwise>
        </xsl:choose>

        <!--table upload status-->
        <xsl:apply-templates select="sqroot/body/bodyContent/tables/table" />
      </div>
    </section>

  </xsl:template>

  <xsl:template match="sqroot/body/bodyContent/form/rows/row">
      <xsl:apply-templates select="fields/field" />
  </xsl:template>

  <xsl:template match="fields/field">
    <div class="form-group enabled-input">
      <xsl:if test="dateBox">
        <xsl:apply-templates select="dateBox"/>
      </xsl:if>
      <xsl:if test="comboBox">
        <xsl:apply-templates select="comboBox"/>
      </xsl:if>
    </div>
  </xsl:template>
  
  <xsl:template match="dateBox">
    <label id="{../@fieldName}caption">
      <xsl:value-of select="titleCaption"/>
    </label>
    <div class="input-group date">
      <div class="input-group-addon">
        <ix class="fa fa-calendar"></ix>
      </div>
      <input type="text" class="form-control pull-right datepicker" id ="{../@fieldName}" name="{../@fieldName}" Value="{value}" placeholder="Select Date" />
    </div>
  </xsl:template>

  <xsl:template match="comboBox">
    <label id="{../@fieldName}caption">
      <xsl:value-of select="titleCaption"/>
    </label>
    <select class="form-control select2" style="width: 100%;" id="{../@fieldName}" name="{../@fieldName}">
      <option />
    </select>
    <script>
      $("#<xsl:value-of select="../@fieldName"/>").select2({
        placeholder: 'Select <xsl:value-of select="titleCaption"/> Value',
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

  <xsl:template match='sqroot/body/bodyContent/tables/table'>
    <div class="row">
      <div class="col-md-12">
        <div class="box" id="exportStatus">
          <div class="box-header">
            <h3 class="box-title">Export Status</h3>
          </div>
          <div class="box-body">
            <table class="table table-bordered">
              <tbody>
                <tr>
                  <th style="width: 150px">Date</th>
                  <th>Comment</th>
                  <th style="width: 80px">Status</th>
                </tr>
                <xsl:apply-templates select="row" />
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
  </xsl:template>

  <xsl:template match="row">
    <tr>
      <td>
        <xsl:if test="dates">
          <xsl:value-of select="dates"/>
        </xsl:if>
      </td>
      <td>
        <xsl:if test="comment">
          <xsl:value-of select="comment"/>
        </xsl:if>
      </td>
      <td>
        <xsl:if test="status">
          <span>
            <xsl:choose>
              <xsl:when test="translate(status, $uppercase, $smallcase) = 'failure'">
                <xsl:attribute name="class">badge bg-red</xsl:attribute>
              </xsl:when>
              <xsl:when test="translate(status, $uppercase, $smallcase) = 'error'">
                <xsl:attribute name="class">badge bg-yellow</xsl:attribute>
              </xsl:when>
              <xsl:when test="translate(status, $uppercase, $smallcase) = 'warning'">
                <xsl:attribute name="class">badge bg-orange</xsl:attribute>
              </xsl:when>
              <xsl:when test="translate(status, $uppercase, $smallcase) = 'attention'">
                <xsl:attribute name="class">badge bg-light-blue</xsl:attribute>
              </xsl:when>
              <xsl:when test="translate(status, $uppercase, $smallcase) = 'success'">
                <xsl:attribute name="class">badge bg-green</xsl:attribute>
              </xsl:when>
            </xsl:choose>
            <xsl:value-of select="status"/>
          </span>
        </xsl:if>
      </td>
    </tr>
  </xsl:template>
  
</xsl:stylesheet>