﻿<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="xml" indent="yes"/>

  <xsl:variable name="smallcase" select="'abcdefghijklmnopqrstuvwxyz'" />
  <xsl:variable name="uppercase" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'" />
  <xsl:decimal-format name="comma-dec" decimal-separator="," grouping-separator="."/>
  <xsl:decimal-format name="dot-dec" decimal-separator="." grouping-separator=","/>

  <xsl:variable name="allowAccess" select="/sqroot/body/bodyContent/form/info/permission/allowAccess" />
  <xsl:variable name="allowEdit" select="/sqroot/body/bodyContent/form/info/permission/allowEdit" />
  <xsl:variable name="allowAdd" select="/sqroot/body/bodyContent/form/info/permission/allowAdd" />
  <xsl:variable name="allowForce" select="/sqroot/body/bodyContent/form/info/permission/allowForce" />
  <xsl:variable name="allowDelete" select="/sqroot/body/bodyContent/form/info/permission/allowDelete" />
  <xsl:variable name="allowWipe" select="/sqroot/body/bodyContent/form/info/permission/allowWipe" />
  <xsl:variable name="allowOnOff" select="/sqroot/body/bodyContent/form/info/permission/allowOnOff" />


  <xsl:variable name="isRequester">
    <xsl:value-of select="/sqroot/body/bodyContent/form/info/document/isRequester"/>
  </xsl:variable>


  <xsl:template match="/">
    <!-- Content Header (Page header) -->
    <script>
      loadScript('OPHContent/cdn/daterangepicker/daterangepicker.js');
      loadScript('OPHContent/cdn/select2/select2.full.min.js');
      <!--loadScript('OPHContent/cdn/celljs/cell.js');-->
      <!--loadScript('OPHContent/cdn/ckeditor/ckeditor.js');-->
      var xmldoc = ""
      var xsldoc = "OPHContent/themes/<xsl:value-of select="/sqroot/header/info/themeFolder"/>/xslt/" + getPage();

      var deferreds = [];

      $(function () {

      <!--//Date picker-->
      $('.datepicker').datepicker({autoclose: true});

     
      });

     

      var stateid = '<xsl:value-of select="/sqroot/body/bodyContent/form/info/state/status/."/>';
      setCookie('stateid', stateid, 0, 1, 0);
      $(function() {

      // We can attach the `fileselect` event to all file inputs on the page
      $(document).on('change', ':file', function() {
      var input = $(this),
      numFiles = input.get(0).files ? input.get(0).files.length : 1,
      label = input.val().replace(/\\/g, '/').replace(/.*\//, '');
      input.trigger('fileselect', [numFiles, label]);


      //var file = this.files[0];
      //if (file.size > 1024 {
      //alert('max upload size is 1k')
      //}
      });

      // We can watch for our custom `fileselect` event like this
      $(document).ready( function() {
      $(':file').on('fileselect', function(event, numFiles, label) {

      var input = $(this).parents('.input-group').find(':text'),
      //log = numFiles > 1 ? numFiles + ' files selected' : label;
      log = label;
      if( input.length ) {
      input.val(log);
      } else {
      //if( log ) alert(log);
      }

      });
      });

      });
      var alwedit = '<xsl:value-of select="$allowEdit"/>'
      var alwadd = '<xsl:value-of select="$allowAdd"/>'
      //if ((alwedit == '0' &amp;&amp; getGUID() != '00000000-0000-0000-0000-000000000000') || (alwadd == 0 &amp;&amp; getGUID() == '00000000-0000-0000-0000-000000000000') ) {
    //window.location = 'index.aspx?code=error';
    //}
  </script>


    <xsl:variable name="settingmode">
      <xsl:value-of select="/sqroot/body/bodyContent/form/info/settingMode/."/>
    </xsl:variable>
    <xsl:variable name="documentstatus">
      <xsl:value-of select="/sqroot/body/bodyContent/form/info/state/status/."/>
    </xsl:variable>
    <section class="page-title parallax parallax1" style="height:200px">
      <div class="title-heading">
        <div class="container">
          <div class="row">
            <div class="col-md-12">
              <div class="box-title">
                <div class="breadcrumbs" style="margin-bottom:30px">
                  <ul style="text-align:center">
                    <li>
                      <a href="?" title="">Home</a>
                      <i class="fa fa-angle-right" aria-hidden="true">&#xA0;</i>
                    </li>
                    <li>
                      <a href="?code={/sqroot/header/info/code/id/.}">
                        <xsl:value-of select="/sqroot/header/info/code/name/." /> List
                      </a>
                      <i class="fa fa-angle-right" aria-hidden="true">&#xA0;</i>
                    </li>
                    <li>
                      <a href="#" title="" style="pointer-events: none; font-weight:200px;">
                        <xsl:value-of select="/sqroot/header/info/code/name/." /> Content
                      </a>
                      <!--<i class="fa fa-angle-right" aria-hidden="true">&#xA0;</i>-->
                    </li>
                  </ul>
                </div>
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
    
    <section id="main-blog">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="wrap-post">
              <xsl:apply-templates select="sqroot/body/bodyContent"/>
              
              <!-- /.blog-post -->
            </div>
          </div>
        </div>
      </div>
    </section>
  </xsl:template>

  <xsl:template match="sqroot/body/bodyContent">
    <xsl:apply-templates select="form"/>
  </xsl:template>


  <xsl:template match="sqroot/body/bodyContent/form/info">
   
    
  </xsl:template>
  
  <!--<xsl:template match="sqroot/body/bodyContent/form/approvals/approval">

    
  </xsl:template>-->
  
  <xsl:template match="form">

    <article class="blog-post style3">
      <div class="entry-post-title">
        <div class="top-post">
          <xsl:value-of select="formPages/formPage/formSections/formSection/formCols/formCol/formRows/formRow[@rowNo=4]/fields/field/textBox/value/."/>&#160;

        </div>
        <div class="post-title">
          <h2>
            <a href="#" title="">
              <xsl:value-of select="formPages/formPage/formSections/formSection/formCols/formCol/formRows/formRow[@rowNo=1]/fields/field/textBox/value/."/>&#160;
            </a>
          </h2>
        </div>
        <div class="post-date">
          <xsl:value-of select="formPages/formPage/formSections/formSection/formCols/formCol/formRows/formRow[@rowNo=3]/fields/field/textBox/value/."/>&#160;

        </div>
      </div>
      <!-- /.entry-post-title -->
      <div class="featured-post">
        <a href="#" title="Share Your Top 10 Favorite Movies">
          <img style="width:100%" src="ophcontent/documents/invoiceportal/{formPages/formPage/formSections/formSection/formCols/formCol/formRows/formRow[@rowNo=5]/fields/field/textBox/value/.}" alt=""/>
        </a>
      </div>
      <!-- /.featured-post -->
      <div class="content-post" id="content-post1">
          
          <xsl:value-of select="formPages/formPage/formSections/formSection/formCols/formCol/formRows/formRow[@rowNo=2]/fields/field/textBox/value/."/>&#160;

      </div>
      <div>
        Tags : <xsl:value-of select="formPages/formPage/formSections/formSection/formCols/formCol/formRows/formRow[@rowNo=6]/fields/field/textBox/value/."/>&#160;
    </div>
      <script>
        replaceContent();
      </script>
      <!-- /.content-post -->
    </article>

    <div class="main-single" style="margin-top:20px;">
      <div id="comments" class="comment-area">
        <script>
          var sqlfilter = "parentdocguid='"+getGUID()+"'"
          LoadNewPart('blog_childbrowse', 'comments', 'blogcomm', sqlfilter, '', '') 
        </script>
        <!--<h5 class="comment-title">Comments</h5>
        <ol class="comment-list">
          <li class="comment">
            <article class="comment-wrap">
              <div class="avatar">
                <img src="images/blogs/comment-01.jpg" alt="" />
							</div>
              <div class="comment-content">
                <div class="comment-meta">
                  <div class="comment-time">
                    27 AUG 2016
                  </div>
                  <div class="comment-author">
                    <h4>Brandon Kelley</h4>
                  </div>
                </div>
                <div class="comment-text">
                  <p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam.</p>
                </div>
              </div>
            </article>
          </li>
        </ol>-->
      </div>

      <div id="respond" class="comment-respond">
        <h5 id="reply-title" class="comment-reply-title">Leave A Comment</h5>
        <form role="form" method="post" class="comment-form" id="blogcomm" enctype="multipart/form-data">
          <input type="hidden" name="docguid" id="PKblogcomm" value=""/>
          <script>
            code = 'blogcomm';
            $('#PK'+code).val(getGUID());
          </script>
          <fieldset class="one-half">
            <div class="field-name">
              <label>Name</label>
              <input type="text" name="name" placeholder="Name |" />
						</div>
            <div class="field-email">
              <label>Email</label>
              <input type="text" name="email" placeholder="Email" />
						</div>
          </fieldset>
          <fieldset class="one-half field-message">
            <label>Message</label>
            <textarea name="comment" placeholder="Messages">&#xA0;</textarea>
          </fieldset>
          <div class="clearfix"></div>
         
        </form>
        <button class="btn btn-orange-a"  onclick="saveThemeONE('blogcomm','00000000-0000-0000-0000-000000000000', 40, 'blogcomm')"> 
          SUBMIT COMMENT
        </button>&#160;

      </div>
    </div>
  </xsl:template>

  <xsl:template match="formPages/formPage[@pageNo&lt;9]">
    <xsl:apply-templates select="formSections"/>
  </xsl:template>

  <xsl:template match="formSections">
    <xsl:apply-templates select="formSection"/>
  </xsl:template>

  <xsl:template match="formSection ">
    
    <xsl:if test="@rowTitle/.!=''">
      <div class="col-md-12" style="margin-bottom:30px;">
        <h5 style=" text-align:center;">
          <xsl:value-of select="@rowTitle/."/>&#160;
        </h5>
      </div>
    </xsl:if>
    <xsl:if test="formCols/formCol/formRows">
      <div class="col-md-12 collapse in" style="margin-bottom:50px;" id="section_{@sectionNo}">
        <xsl:apply-templates select="formCols"/>
      </div>
    </xsl:if>
  </xsl:template>

  <xsl:template match="formCols">
    <xsl:apply-templates select="formCol"/>
  </xsl:template>

  <xsl:template match="formCol">
    <xsl:variable name="totalcol">
      <xsl:value-of select="count(../formCol)" />
    </xsl:variable>
    
    <xsl:choose>
      <xsl:when test="@colNo='0'">
        <div class="col-md-12">
          <xsl:apply-templates select="formRows"/>
        </div>
      </xsl:when>
      <xsl:otherwise>
        <xsl:if test="$totalcol = 1">
          <div class="col-md-2">&#xA0;</div>
          <div class="col-md-8">
            <xsl:if test="@colNo='1'">
              <xsl:apply-templates select="formRows"/>
            </xsl:if>
          </div>
          <div class="col-md-2">&#xA0;</div>
        </xsl:if>
        <xsl:if test="$totalcol &gt; 1">
          <div class="col-md-6">
            <xsl:if test="@colNo='1'">
              <xsl:apply-templates select="formRows"/>
            </xsl:if>
            <xsl:if test="@colNo='2'">
              <xsl:apply-templates select="formRows"/>
            </xsl:if>
          </div>
        </xsl:if>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="formRows">
    <div class="box">
      <div class="box-body">
        <xsl:apply-templates select="formRow"/>
      </div>
    </div>
  </xsl:template>

  <xsl:template match="formRow ">
    <xsl:apply-templates select="fields"/>
  </xsl:template>

  <xsl:template match="fields">
    <xsl:apply-templates select="field"/>
  </xsl:template>

  <xsl:template match="field">
    <xsl:if test="@isNullable=0">
      <script>
        document.getElementsByName(tblnm)[0].value = document.getElementsByName(tblnm)[0].value + ', <xsl:value-of select="@fieldName"/>'
      </script>
    </xsl:if>

    <xsl:variable name="fieldEnabled">
      <xsl:choose>
        <xsl:when test ="@isEditable=1 or (@isEditable=2 and (/sqroot/body/bodyContent/form/info/GUID/. = '00000000-0000-0000-0000-000000000000'))">enabled</xsl:when>
        <xsl:otherwise>disabled</xsl:otherwise>
      </xsl:choose>
    </xsl:variable>

    <xsl:choose>
      <xsl:when test ="@isEditable=0 or (@isEditable=2 and (/sqroot/body/bodyContent/form/info/GUID/. != '00000000-0000-0000-0000-000000000000')) or (/sqroot/body/bodyContent/form/info/permission/allowEdit/.)!='1'">
        <script>
          $('#<xsl:value-of select="@fieldName"/>').attr('disabled', true);
        </script>
      </xsl:when>
    </xsl:choose>

    <div class="form-group {$fieldEnabled}-input contact-form-name contact-form">
      <xsl:apply-templates select="textBox"/>
      <xsl:apply-templates select="textEditor"/>
      <xsl:apply-templates select="textArea"/>
      <xsl:apply-templates select="dateBox"/>
      <xsl:apply-templates select="dateTimeBox"/>
      <xsl:apply-templates select="timeBox"/>
      <xsl:apply-templates select="passwordBox"/>
      <xsl:apply-templates select="checkBox"/>
      <xsl:apply-templates select="mediaBox"/>
      <xsl:apply-templates select="autoSuggestBox"/>
      <xsl:apply-templates select="tokenBox"/>
      <xsl:apply-templates select="radio"/>
    </div>
  </xsl:template>

  <xsl:template match="checkBox">
    <!--Supaya bisa di serialize-->
    <div style="height:20px;">&#160;</div>
    <input type="hidden" name="{../@fieldName}" id="{../@fieldName}" value="{value}"/>
    <!--Supaya bisa di serialize-->
    <input type="checkbox" value="{value}" style="height:13px;" id ="cb{../@fieldName}"  name="cb{../@fieldName}" data-type="checkBox" data-old="{value}"
      onchange="checkCB('{../@fieldName}');preview('{preview/.}', getCode(), '{/sqroot/body/bodyContent/form/info/GUID/.}','formheader', this);">
      <xsl:if test="value=1">
        <xsl:attribute name="checked">checked</xsl:attribute>
      </xsl:if>
      <xsl:if test="../@isEditable='0' or (../@isEditable='2' and (/sqroot/body/bodyContent/form/info/GUID/. != '00000000-0000-0000-0000-000000000000')) or (/sqroot/body/bodyContent/form/info/permission/allowEdit/.)!='1'">
        <xsl:attribute name="disabled">disabled</xsl:attribute>
      </xsl:if>
    </input>
    
    <label id="{../@fieldName}caption" style="padding:10px">
      <xsl:value-of select="titlecaption"/>
    </label>
    <xsl:if test="../@isNullable = 0">
      <span id="rfm_{../@fieldName}" style="color:red;float:right;">required *</span>
    </xsl:if>

    <label id="{../@fieldName}suffixCaption">
      <xsl:value-of select="suffixCaption"/>
    </label>
    

  </xsl:template>

  <xsl:template match="textEditor">
    <label id="{../@fieldName}caption" data-toggle="collapse" data-target="#section_{@sectionNo}">
      <xsl:value-of select="titlecaption"/>
    </label>
    <xsl:if test="../@isNullable = 0">
      <span id="rfm_{../@fieldName}" style="color:red;float:right;">required *</span>
    </xsl:if>

    <textarea id ="{../@fieldName}" name ="{../@fieldName}" class="form-control">
      <xsl:choose>
        <xsl:when test="value != ''">
          <xsl:value-of select="value"/>
        </xsl:when>
        <xsl:otherwise>&#160;</xsl:otherwise>
      </xsl:choose>
    </textarea>

    <script type="text/javascript">
      CKEDITOR.replace('<xsl:value-of select="../@fieldName"/>');
      CKEDITOR.instances['<xsl:value-of select="../@fieldName"/>'].on('blur', function() {
      var teOldData = $('#<xsl:value-of select="../@fieldName"/>').html();
      var teData = CKEDITOR.instances['<xsl:value-of select="../@fieldName"/>'].getData();
      teData = teData.trim();
      $('#<xsl:value-of select="../@fieldName"/>').html(teData);
      if (teOldData != teData) {
      $('#button_save').show();
      $('#button_cancel').show();
      $('#button_save2').show();
      $('#button_cancel2').show();
      }
      preview('{preview/.}',getCode(), '{/sqroot/body/bodyContent/form/info/GUID/.}','formheader', this);
      });
    </script>
  </xsl:template>

  <xsl:template match="textBox">
    <label id="{../@fieldName}caption">
      <xsl:value-of select="titlecaption"/>
    </label>
    <xsl:if test="../@isNullable = 0">
      <span id="rfm_{../@fieldName}" style="color:red;float:right;">required *</span>
    </xsl:if>
  

    <!--digit-->
    <xsl:variable name="tbContent">
      <xsl:choose>
        <xsl:when test="digit = 0 and value!=''">
          <xsl:value-of select="format-number(value, '###,###,###,##0', 'dot-dec')"/>
        </xsl:when>
        <xsl:when test="digit  = 1 and value!=''">
          <xsl:value-of select="format-number(value, '###,###,###,##0.0', 'dot-dec')"/>
        </xsl:when>
        <xsl:when test="digit  = 2 and value!=''">
          <xsl:value-of select="format-number(value, '###,###,###,##0.00', 'dot-dec')"/>
        </xsl:when>
        <xsl:when test="digit  = 3 and value!=''">
          <xsl:value-of select="format-number(value, '###,###,###,##0.000', 'dot-dec')"/>
        </xsl:when>
        <xsl:when test="digit  = 4 and value!=''">
          <xsl:value-of select="format-number(value, '###,###,###,##0.0000', 'dot-dec')"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:value-of select="value"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>

    <!--default value-->
    <xsl:variable name="thisvalue">
      <xsl:choose>
        <xsl:when  test="/sqroot/body/bodyContent/form/info/GUID/. = '00000000-0000-0000-0000-000000000000' and defaultvalue != ''">
          <xsl:value-of select="defaultvalue/." />
        </xsl:when>
        <xsl:otherwise>
          <xsl:value-of select="$tbContent" />
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <!--<div class="contact-form-name contact-form">-->
      <input type="text" class="form-control" Value="{$thisvalue}" data-type="textBox" data-old="{$thisvalue}" name="{../@fieldName}"
             onblur="preview('{preview/.}',getCode(), '{/sqroot/body/bodyContent/form/info/GUID/.}','formheader', this);" id ="{../@fieldName}"
             oninput="javascript:checkChanges(this)" >
        <xsl:if test="../@isEditable=0 or (../@isEditable=2 and (/sqroot/body/bodyContent/form/info/GUID/. != '00000000-0000-0000-0000-000000000000')) or (/sqroot/body/bodyContent/form/info/permission/allowEdit/.)!='1'">
          <xsl:attribute name="disabled">disabled</xsl:attribute>
        </xsl:if>
      </input>
    <!--</div>-->
  </xsl:template>

  <xsl:template match="textArea">
    <label id="{../@fieldName}caption">
      <xsl:value-of select="titlecaption"/>
    </label>
    <xsl:if test="../@isNullable = 0">
      <span id="rfm_{../@fieldName}" style="color:red;float:right;">required *</span>
    </xsl:if>

    <!--default value-->
    <xsl:variable name="thisValue">
      <xsl:choose>
        <xsl:when  test="/sqroot/body/bodyContent/form/info/GUID/. = '00000000-0000-0000-0000-000000000000' and defaultvalue != ''">
          <xsl:value-of select="defaultvalue/." />
        </xsl:when>
        <xsl:otherwise>
          <xsl:choose>
            <xsl:when test="value and value != ''">
              <xsl:value-of select="value"/>            
            </xsl:when>
            <xsl:otherwise>&#160;</xsl:otherwise>
          </xsl:choose>          
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    
    <textarea class="form-control" placeholder="input text..." name="{../@fieldName}" id ="{../@fieldName}" data-type="textArea" style="max-width:100%; min-width:100%; height:{digit/.}px !important; border:none; border-bottom: 2px solid #808080; box-shadow:none;"
      onblur="preview('{preview/.}',getCode(), '{/sqroot/body/bodyContent/form/info/GUID/.}','formheader', this);" oninput="javascript:checkChanges(this)" >
      
      <xsl:if test="../@isEditable=0 or (../@isEditable=2 and (/sqroot/body/bodyContent/form/info/GUID/. != '00000000-0000-0000-0000-000000000000')) or (/sqroot/body/bodyContent/form/info/permission/allowEdit/.)!='1'">
        <xsl:attribute name="disabled">disabled</xsl:attribute>
      </xsl:if>
      <xsl:value-of select="$thisValue"/>
    </textarea>
    <script>
      $('#<xsl:value-of select="../@fieldName"/>').val($.trim($('#<xsl:value-of select="../@fieldName"/>').val()));
    </script>
 
  </xsl:template>

  <xsl:template match="dateBox">
    <label id="{../@fieldName}caption">
      <xsl:value-of select="titlecaption"/>
    </label>
    <xsl:if test="../@isNullable = 0">
      <span id="rfm_{../@fieldName}" style="color:red;float:right;">required *</span>
    </xsl:if>
    <div class="input-group date">
      <div class="input-group-addon">
        <ix class="fa fa-calendar"></ix>
      </div>

      <div class="contact-form-name contact-form">
        <input type="text" class="form-control pull-right datepicker" id ="{../@fieldName}" name="{../@fieldName}" Value="{value}" data-type="dateBox" data-old="{value}"
          onblur="preview('{preview/.}',getCode(), '{/sqroot/body/bodyContent/form/info/GUID/.}','formheader', this);"
          onchange="checkChanges(this)" >
          <xsl:if test="../@isEditable=0">
            <xsl:attribute name="disabled">disabled</xsl:attribute>
          </xsl:if>
        </input>
      </div>
    </div>
  </xsl:template>

  <xsl:template match="dateTimeBox">
    <label id="{../@fieldName}caption">
      <xsl:value-of select="titlecaption"/>
    </label>
    <div class="input-group date">
      <div class="input-group-addon">
        <ix class="fa fa-calendar"></ix>
      </div>
      <input type="text" class="form-control pull-right datetimepicker" id ="{../@fieldName}" name="{../@fieldName}" Value="{value}" data-type="dateTimeBox" data-old="{value}"
        onblur="preview('{preview/.}',getCode(), '{/sqroot/body/bodyContent/form/info/GUID/.}','formheader', this);" >
        <xsl:if test="../@isEditable=0">
          <xsl:attribute name="disabled">disabled</xsl:attribute>
        </xsl:if>
      </input>
    </div>
  </xsl:template>

  <xsl:template match="passwordBox">
    <label id="{../@fieldName}caption">
      <xsl:value-of select="titlecaption"/>
    </label>
    <xsl:if test="../@isNullable = 0">
      <span id="rfm_{../@fieldName}" style="color:red;float:right;">required *</span>
    </xsl:if>

    <input type="password" class="form-control" Value="{value}" data-type="textBox" data-old="" name="{../@fieldName}"
      onblur="preview('{preview/.}',getCode(), '{/sqroot/body/bodyContent/form/info/GUID/.}','formheader', this);" id ="{../@fieldName}">
      <xsl:if test="../@isEditable=0 or (../@isEditable=2 and (/sqroot/body/bodyContent/form/info/GUID/. != '00000000-0000-0000-0000-000000000000')) or (/sqroot/body/bodyContent/form/info/permission/allowEdit/.)!='1'">
        <xsl:attribute name="disabled">disabled</xsl:attribute>
      </xsl:if>
    </input>
    <!--<span>Strength</span>-->
    <span id="{../@fieldName}-container">
    </span>

    <script>
      $(document).ready(function() {
        $('#<xsl:value-of select="../@fieldName"/>').strengthMeter('progressBar', {
        container: $('#<xsl:value-of select="../@fieldName"/>-container')
        });
      });
    </script>

  </xsl:template>

  <xsl:template match="timeBox">
    <script>//timebox</script>
    <label id="{../@fieldName}caption">
      <xsl:value-of select="titlecaption"/>
    </label>
    <xsl:if test="../@isNullable = 0">
      <span id="rfm_{../@fieldName}" style="color:red;float:right;">required *</span>
    </xsl:if>

    <div class="input-group date">
      <div class="input-group-addon">
        <ix class="fa fa-clock-o"></ix>
      </div>
      <input type="text" class="form-control pull-right timepicker" id ="{../@fieldName}" name="{../@fieldName}"
             data-type="timeBox" data-old="{value}" Value="{value}"
             onblur="preview('{preview/.}','{/sqroot/body/bodyContent/form/code/id}', '{/sqroot/body/bodyContent/form/info/GUID/.}','form{/sqroot/body/bodyContent/form/code/id}', this);" >
        <xsl:choose>
          <xsl:when test ="../@isEditable=1 or (../@isEditable=2 and (/sqroot/body/bodyContent/form/info/GUID/. = '00000000-0000-0000-0000-000000000000'))"></xsl:when>
          <xsl:otherwise>
            <xsl:attribute name="disabled">disabled</xsl:attribute>
          </xsl:otherwise>
        </xsl:choose>
      </input>
    </div>
  </xsl:template>

  <xsl:template match="autoSuggestBox">
    <label id="{../@fieldName}caption">
      <xsl:value-of select="titlecaption"/>
    </label>
    <xsl:if test="../@isNullable = 0">
      <span id="rfm_{../@fieldName}" style="color:red;float:right;">required *</span>
    </xsl:if>
    <select class="form-control select2" style="width: 100%;" name="{../@fieldName}" id="{../@fieldName}" data-type="selectBox"
      data-old="{value/.}" data-oldText="{value/.}" data-value="{value/.}" 
        onchange="autosuggest_onchange(this, '{preview/.}', getCode(), '{/sqroot/body/bodyContent/form/info/GUID/.}', 'formheader');" >        
      <xsl:if test="../@isEditable=0">
        <xsl:attribute name="disabled">disabled</xsl:attribute>
      </xsl:if>
      <option></option>
    </select>

    <!--AutoSuggest Add New Form Modal-->
    <xsl:if test="(@allowAdd=1 or @allowEdit=1) and ../@isEditable=1">
      <div id="addNew{../@fieldName}" class="modal fade" role="dialog">
        <div class="modal-dialog modal-lg" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close" >
                <span aria-hidden="true">&#215;</span>
              </button>
              <div style="float:left;margin-top:-15px;">
                <h3>
                  <xsl:value-of select="titlecaption"/>
                </h3>
                <span>(Quick Add New Data Set)</span>
              </div>
              <div style="float:left">
                <a id="link{../@fieldName}" data-toggle="tooltip" data-placement="right" title="Click to see more detail" style="cursor:pointer;" onclick="">
                  <ix class="fa fa-external-link fa-2x"></ix>
                </a>
                <script>
                  $('#link<xsl:value-of select="../@fieldName"/>').click(function(){
                  var guid = (isGuid($('#<xsl:value-of select="../@fieldName"/>').val())) ? $('#<xsl:value-of select="../@fieldName"/>').val() : '00000000-0000-0000-0000-000000000000';
                  var url = '?code=<xsl:value-of select="@comboCode"/>&amp;guid=' + guid;
                  window.open(url);
                  });
                </script>
              </div>
            </div>
            <div class="modal-body">
              <div class="row" id="modalForm{../@fieldName}">
                &#160;
              </div>
            </div>
            <script>
              if ($('body').children('#addNew<xsl:value-of select="../@fieldName"/>').length == 1) {
                $('body').children('#addNew<xsl:value-of select="../@fieldName"/>').remove();
              }
              $('#addNew<xsl:value-of select="../@fieldName"/>').appendTo("body");
              $('#addNew<xsl:value-of select="../@fieldName"/>').on('show.bs.modal', function (event) {
                $('#<xsl:value-of select="../@fieldName"/>').select2('close');
                $('#modalForm<xsl:value-of select="../@fieldName"/>').append('<div class="col-md-12"></div>');
                $('#modalForm<xsl:value-of select="../@fieldName"/>').children('.col-md-12').append('<div style="float:left;"></div>');
                $('#modalForm<xsl:value-of select="../@fieldName"/>').children('.col-md-12').append('<div style="float:left; margin-left:10px;font-size:20px;">Please wait...</div>');
                $('#modalForm<xsl:value-of select="../@fieldName"/>').children('.col-md-12').children('div:first').append('<ix class="fa fa-spinner fa-pulse fa-2x fa-fw"></ix>');
              }).on('shown.bs.modal', function (event) {
                if (isGuid($('#<xsl:value-of select="../@fieldName"/>').val()) &amp;&amp; $(event.relatedTarget).data('action') == 'edit' ) {
                  loadModalForm('modalForm<xsl:value-of select="../@fieldName"/>', '<xsl:value-of select="@comboCode"/>', $('#<xsl:value-of select="../@fieldName"/>').val());
                }
                else {
                  loadModalForm('modalForm<xsl:value-of select="../@fieldName"/>', '<xsl:value-of select="@comboCode"/>', '00000000-0000-0000-0000-000000000000');
                }
              }).on('hide.bs.modal', function(event){
                $('#modalForm<xsl:value-of select="../@fieldName"/>').children('div').remove();
                $('#modalForm<xsl:value-of select="../@fieldName"/>').children('form').remove();
                $('#modalForm<xsl:value-of select="../@fieldName"/>').children('button').remove();
                $('#addNew<xsl:value-of select="../@fieldName"/> .modal-footer').children('button[id*="btn_save"]').remove();
                $('#modalForm<xsl:value-of select="../@fieldName"/>').text('&#160;');
              });
            </script>
            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal" >Cancel</button>
            </div>
          </div>
        </div>
      </div>

      <xsl:if test="@allowAdd=1">
        <span class="select2-search select2-box--dropdown" id="select2-{../@fieldName}-addNew" style="display:none;">
          <ul class="select2-results__options" role="tree" aria-expanded="true" aria-hidden="false">
            <li class="select2-results__option" role="treeitem" aria-selected="false">
              <a data-toggle="modal" data-target="#addNew{../@fieldName}" data-backdrop="static" data-action="new">
                Add New <xsl:value-of select="titlecaption"/>
              </a>
            </li>
          </ul>
        </span>
        <script>
          $("#<xsl:value-of select="../@fieldName"/>").on("select2:open", function(e) {
            var s2id = $("span[class*='select2-dropdown select2-dropdown']").children('.select2-results').children().attr('id');
            s2id = s2id.split('select2-').join('').split('-results').join('');
            if (s2id == '<xsl:value-of select="../@fieldName"/>') {
              $('#select2-<xsl:value-of select="../@fieldName"/>-addNew').appendTo("span[class*='select2-dropdown select2-dropdown']").show();
            }
          });
        </script>
      </xsl:if>

      <xsl:if test="@allowEdit=1">
        <span id="editForm{../@fieldName}" data-toggle="modal" data-target="#addNew{../@fieldName}" data-backdrop="static" data-action="edit"
          style="cursor: pointer;margin: 8px 30px 0px 0px;position: absolute;top: 0px;right: 0px; display:none" >
          <ix class="fa fa-pencil" title= "Edit" ></ix >
        </span >
        <script>
          $("#<xsl:value-of select="../@fieldName"/>").on("select2:select", function(e) {
            $selection = $('#select2-<xsl:value-of select="../@fieldName"/>-container').parents('.selection');
            if ($selection.children('#editForm<xsl:value-of select="../@fieldName"/>').length == 0) {
              $('#editForm<xsl:value-of select="../@fieldName"/>').appendTo($selection).show();
            }
          });
        </script>
      </xsl:if>
    
    </xsl:if>

    <script>
      $("#<xsl:value-of select="../@fieldName"/>").select2({
        placeholder: 'Select <xsl:value-of select="titlecaption"/>',
        onAdd: function(x) {
          preview('<xsl:value-of select="preview/."/>', getCode(), '<xsl:value-of select="/sqroot/body/bodyContent/form/info/GUID/."/>','formheader', this);
        },
        onDelete: function(x) {
          preview('<xsl:value-of select="preview/."/>', getCode(), '<xsl:value-of select="/sqroot/body/bodyContent/form/info/GUID/."/>','formheader', this);
        },        
        ajax: {
          url:"OPHCORE/api/msg_autosuggest.aspx",
          delay : 0,
          data: function (params) {
            var query = {
              code:"<xsl:value-of select="/sqroot/body/bodyContent/form/info/code/."/>",
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
        autosuggest_setValue('<xsl:value-of select="../@fieldName"/>','<xsl:value-of select="/sqroot/body/bodyContent/form/info/code/."/>','<xsl:value-of select='../@fieldName'/>', '<xsl:value-of select='value'/>', '<xsl:value-of select='whereFields/wf1'/>', '<xsl:value-of select='whereFields/wf2'/>')
        );
      </xsl:if>
    </script>
  </xsl:template>

  <xsl:template match="tokenBox">
    <script type="text/javascript">
      var sURL<xsl:value-of select="../@fieldName"/>='OPHCore/api/msg_autosuggest.aspx?mode=token&amp;code=<xsl:value-of select="/sqroot/body/bodyContent/form/info/code/."/>&amp;colkey=<xsl:value-of select="../@fieldName"/>'
      var noPrepopulate<xsl:value-of select="../@fieldName"/>=1;
      <xsl:if test="value">
        noPrepopulate<xsl:value-of select="../@fieldName"/>=0;
      </xsl:if>
      var cURL<xsl:value-of select="../@fieldName"/>='OPHCore/api/msg_autosuggest.aspx?mode=token&amp;code=<xsl:value-of select="/sqroot/body/bodyContent/form/info/code/."/>&amp;colkey=<xsl:value-of select="../@fieldName"/>&amp;search=<xsl:value-of select="value"/>'

      $(document).ready(function(){
      $.ajax({
        url: cURL<xsl:value-of select="../@fieldName"/>,
        dataType: 'json',
        success: function(data){
        if (noPrepopulate<xsl:value-of select="../@fieldName"/>==1) data='';
        $("#<xsl:value-of select="../@fieldName"/>").tokenInput(
        sURL<xsl:value-of select="../@fieldName"/>,
        {
          hintText: "please type...",
          searchingText: "Searching...",
          preventDuplicates: true,
          allowCustomEntry: true,
          highlightDuplicates: false,
          tokenDelimiter: "*",
          theme:"facebook",
          prePopulate: data,
          onReady: function(x) {
        },
        onAdd: function(x) {
          preview('<xsl:value-of select="preview/."/>', getCode(), '<xsl:value-of select="/sqroot/body/bodyContent/form/info/GUID/."/>','formheader', this);
        },
        onDelete: function(x) {
          preview('<xsl:value-of select="preview/."/>', getCode(), '<xsl:value-of select="/sqroot/body/bodyContent/form/info/GUID/."/>','formheader', this);
        }
      }
      );
      }
      });
      });
    </script>

    <label id="{../@fieldName}caption">
      <xsl:value-of select="titlecaption"/>
    </label>

    <xsl:if test="../@isNullable = 0">
      <span id="rfm_{../@fieldName}" style="color:red;float:right;">required *</span>
    </xsl:if>

    <!--digit-->
    <xsl:variable name="tbContent">
      <xsl:value-of select="value"/>
    </xsl:variable>

    <!--default value-->
    <xsl:variable name="thisvalue">
      <xsl:choose>
        <xsl:when  test="/sqroot/body/bodyContent/form/info/GUID/. = '00000000-0000-0000-0000-000000000000' and defaultvalue != ''">
          <xsl:value-of select="defaultvalue/." />
        </xsl:when>
        <xsl:otherwise>
          <xsl:value-of select="$tbContent" />
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>

    <input type="text" class="form-control" Value="{$thisvalue}" data-type="tokenBox" data-old="{$thisvalue}" data-newJSON="" data-code="{code/.}"
      data-key="{key}" data-id="{id}" data-name="{name}"
      name="{../@fieldName}" id ="{../@fieldName}">

      <xsl:if test="../@isEditable=0">
        <xsl:attribute name="disabled">disabled</xsl:attribute>
      </xsl:if>
    </input>
  </xsl:template>

  <xsl:template match="mediaBox">
    <label id="{../@fieldName}caption">
      <xsl:value-of select="titlecaption"/>
    </label>
    <xsl:if test="../@isNullable = 0">
      <span id="rfm_{../@fieldName}" style="color:red;float:right;">required *</span>
    </xsl:if>

    <!--default value-->
    <xsl:variable name="thisvalue">
      <xsl:choose>
        <xsl:when  test="/sqroot/body/bodyContent/form/info/GUID/. = '00000000-0000-0000-0000-000000000000' and defaultvalue != ''">
          <xsl:value-of select="defaultvalue/." />
        </xsl:when>
        <xsl:otherwise>
          <xsl:value-of select="value"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>

    <div class="input-group">
      <label class="input-group-btn">
        <span class="btn btn-primary">
          Browse <input id ="{../@fieldName}_hidden" name="{../@fieldName}_hidden" type="file" style="display: none;" multiple="">
          </input>
        </span>
      </label>
      <input id ="{../@fieldName}" name="{../@fieldName}" Value="{value}" type="text" class="form-control" readonly="" />
      <span class="input-group-btn">
        <button class="btn btn-secondary" type="button" onclick="javascript:popTo('OPHcore/api/msg_download.aspx?fieldAttachment={../@fieldName}&#38;code={/sqroot/body/bodyContent/form/info/code/.}&#38;GUID={/sqroot/body/bodyContent/form/info/GUID/.}');">
          <xsl:if test="/sqroot/body/bodyContent/form/info/GUID='00000000-0000-0000-0000-000000000000'">
            <xsl:attribute name="disabled">disabled</xsl:attribute>
          </xsl:if>
          <ix class="fa fa-paperclip"></ix>&#160;
        </button>
      </span>
    </div>
  </xsl:template>

  <xsl:template match="radio">
    <script>
      function <xsl:value-of select="../@fieldName" />_hide(shownId) {
      $('#accordion_<xsl:value-of select="../@fieldName" />').children().each(function(){
      if ($(this).hasClass('in') &#38;&#38; this.id!=shownId) {
      $(this).collapse('toggle');
      }
      });
      }
    </script>
    <input type="hidden" id="{../@fieldName}" name="{../@fieldName}" value="{value/.}" />
    <div>
      <label id="{../@fieldName}caption">
        <xsl:value-of select="titlecaption"/>
      </label>
      <xsl:if test="../@isNullable = 0">
        <span id="rfm_{../@fieldName}" style="color:red;float:right;">required *</span>
      </xsl:if>
    </div>
    <div class = "btn-group" data-toggle = "radios">
      <xsl:apply-templates select="radioSections/radioSection"/>
    </div>
    <xsl:if test="radioSections/radioSection/radioRows">
      <div class="panel-body" id="accordion_{../@fieldName}" style="box-shadow:none;border:none;display:none;">
        <xsl:for-each select="radioSections/radioSection">
          <!--<xsl:if test="radioSections/radioSection/radioRows/radioRow">-->
          <div id="panel_{../../../@fieldName}_{@radioNo}" class="box collapse" style="box-shadow:none;border:none;">
            <xsl:apply-templates select="radioRows/radioRow/fields" />&#160;
          </div>
          <!--</xsl:if>-->
        </xsl:for-each>
      </div>
    </xsl:if>
  </xsl:template>

  <xsl:template match="radioSections/radioSection">

    <xsl:variable name="pandis" select="count(radioRows)"/>

    <xsl:choose>
      <xsl:when test="@fieldName=../../value/.">
        <xsl:choose>
          <xsl:when test="radioRows">
            <label class="radio-inline" for="{../../../@fieldName}_radio_{@radioNo}" onclick="panel_display('accordion_{../../../@fieldName}', 1)" >
              <input type="radio" name="{../../../@fieldName}_radio" id="{../../../@fieldName}_radio_{@radioNo}" value="{@fieldName}" checked="checked" />
              <xsl:value-of select="@radioRowTitle"/>
            </label>
          </xsl:when>
          <xsl:otherwise>
            <label class="radio-inline" for="{../../../@fieldName}_radio_{@radioNo}" onclick="panel_display('accordion_{../../../@fieldName}', 0)" >
              <input type="radio" name="{../../../@fieldName}_radio" id="{../../../@fieldName}_radio_{@radioNo}" value="{@fieldName}" checked="checked" />
              <xsl:value-of select="@radioRowTitle"/>
            </label>
          </xsl:otherwise>
        </xsl:choose>
        <script>
          $('#panel_<xsl:value-of select="../../../@fieldName" />_<xsl:value-of select="@radioNo" />').collapse('show');
        </script>
      </xsl:when>
      <xsl:otherwise>
        <xsl:choose>
          <xsl:when test="radioRows">
            <label class="radio-inline" for="{../../../@fieldName}_radio_{@radioNo}" onclick="panel_display('accordion_{../../../@fieldName}', 1)" >
              <input type="radio" name="{../../../@fieldName}_radio" id="{../../../@fieldName}_radio_{@radioNo}" value="{@fieldName}" />
              <xsl:value-of select="@radioRowTitle"/>
            </label>
          </xsl:when>
          <xsl:otherwise>
            <label class="radio-inline" for="{../../../@fieldName}_radio_{@radioNo}" onclick="panel_display('accordion_{../../../@fieldName}', 0)" >
              <input type="radio" name="{../../../@fieldName}_radio" id="{../../../@fieldName}_radio_{@radioNo}" value="{@fieldName}" />
              <xsl:value-of select="@radioRowTitle"/>
            </label>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:otherwise>
    </xsl:choose>

    <script>
      $('#<xsl:value-of select="../../../@fieldName" />_radio_<xsl:value-of select="@radioNo" />').click(function(){
      <xsl:value-of select="../../../@fieldName" />_hide('panel_<xsl:value-of select="../../../@fieldName" />_<xsl:value-of select="@radioNo" />');
      $('#panel_<xsl:value-of select="../../../@fieldName" />_<xsl:value-of select="@radioNo" />').collapse('show');
      var x=$('input[name=<xsl:value-of select="../../../@fieldName" />_radio]:checked').val();
      $('#<xsl:value-of select="../../../@fieldName" />').val(x);
      });
    </script>
  </xsl:template>

  <xsl:template match="radioRow/fields">
    <xsl:apply-templates select="field" />
  </xsl:template>

  <xsl:template match="sqroot/body/bodyContent/form/children">
    <xsl:apply-templates select="child"/>
  </xsl:template>

  <xsl:template match="child">
    <xsl:if test="info/permission/allowBrowse='1'">
      <input type="hidden" id="PKID" value="child{code/.}"/>
      <input type="hidden" id="filter{code/.}" value="{parentkey/.}='{/sqroot/body/bodyContent/form/info/GUID/.}'"/>
      <input type="hidden" id="parent{code/.}" value="{parentkey/.}"/>
      <input type="hidden" id="PKName" value="{parentkey/.}"/>
      <script>

        var code='<xsl:value-of select ="code/."/>';
        var parentKey='<xsl:value-of select ="parentkey/."/>';
        var GUID='<xsl:value-of select ="/sqroot/body/bodyContent/form/info/GUID/."/>';
        var browsemode='<xsl:value-of select ="browseMode/."/>';
        loadChild(code, parentKey, GUID, null, browsemode);
      </script>

      <div class="box box-solid box-default" style="box-shadow:0px;border:none" id="child{code/.}{/sqroot/body/bodyContent/form/info/GUID/.}">
        &#160;
      </div>

    </xsl:if>
  </xsl:template>

</xsl:stylesheet>
