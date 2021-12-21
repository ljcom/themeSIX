<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="xml" indent="yes"/>

  <xsl:variable name="smallcase" select="'abcdefghijklmnopqrstuvwxyz'" />
  <xsl:variable name="uppercase" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'" />

  <xsl:decimal-format name="comma-dec" decimal-separator="," grouping-separator="."/>
  <xsl:decimal-format name="dot-dec" decimal-separator="." grouping-separator=","/>

  <xsl:variable name="state" select="/sqroot/body/bodyContent/browse/info/curState/@substateCode" />
  <xsl:variable name="allowAccess" select="/sqroot/body/bodyContent/browse/info/permission/allowAccess" />
  <xsl:variable name="allowForce" select="/sqroot/body/bodyContent/browse/info/permission/allowForce" />
  <xsl:variable name="allowDelete" select="/sqroot/body/bodyContent/browse/info/permission/allowDelete" />
  <xsl:variable name="allowWipe" select="/sqroot/body/bodyContent/browse/info/permission/allowWipe" />
  <xsl:variable name="allowOnOff" select="/sqroot/body/bodyContent/browse/info/permission/allowOnOff" />

  <!--Table colspan-->
  <xsl:variable name="cMandatory">
    <xsl:value-of select="count(sqroot/body/bodyContent/browse/header/column[@mandatory=1])"/>                        
  </xsl:variable>
  <xsl:variable name="cSummary">
    <xsl:choose>
      <xsl:when test="sqroot/body/bodyContent/browse/header/column[@mandatory=0]">1</xsl:when>
      <xsl:otherwise>0</xsl:otherwise>
    </xsl:choose>
  </xsl:variable>
  <xsl:variable name="cDelegated">
    <xsl:value-of select="sqroot/body/bodyContent/browse/info/isDelegated"/>                        
  </xsl:variable>
  <xsl:variable name="cDelegator">
    <xsl:choose>
      <xsl:when test="sqroot/body/bodyContent/browse/info/isDelegator = 0">1</xsl:when>
      <xsl:otherwise>0</xsl:otherwise>
    </xsl:choose>
  </xsl:variable>
  <xsl:variable name="tMode">
    <xsl:choose>
      <xsl:when test="sqroot/header/info/code/settingMode='T'">1</xsl:when>
      <xsl:otherwise>0</xsl:otherwise>
    </xsl:choose>
  </xsl:variable>
  <xsl:variable name="tcolspan" select="$cMandatory + $cSummary + $cDelegated + $cDelegator + $tMode + 1"/>
  
  <xsl:template match="/">
  <!--Re-Modeled by eLs-->
    <script>
      //loadScript('OPHContent/cdn/select2/select2.full.min.js');
      <xsl:if test="sqroot/body/bodyContent/browse/info/buttons">
        buttons=<xsl:value-of select="sqroot/body/bodyContent/browse/info/buttons"/>;
        loadExtraButton(buttons, 'browse-action-button');
      </xsl:if>
      
      //checkbox pinned
      $("#pinnedAll").click(function () {
        $('input:checkbox').not(this).prop('checked', this.checked);        
        if(this.checked &amp;&amp; $("input:checked").not(this).length > 0 ) {
          $("#actionHeader span").hide();
          $("#actionHeader div").show();
        } else {
          $("#actionHeader span").show();
          $("#actionHeader div").hide();
        }
      });
      
      $("input:checkbox").not("#pinnedAll").click(function() {
        var odd = $(this).parents(".odd-tr");
        var even = $(odd).next();
        
        if (this.checked) {          
          $("#actionHeader span").hide();
          $("#actionHeader div").show();
                                       
          if ($("input:checkbox").not("#pinnedAll").length == $("input:checked").not("#pinnedAll").length)
            $("#pinnedAll").prop('checked', 'checked');
        } 
        else {          
          if ($("input:checked").not("#pinnedAll").length != $("input:checkbox").not("#pinnedAll").length)
            $("#pinnedAll").prop('checked', false);
        }
      
        if($("input:checked").not("#pinnedAll").length == 0){
          $("#actionHeader span").show();
          $("#actionHeader div").hide();
        }
      });
    </script>

    <!--Delegator Action Modal-->
    <xsl:if test="sqroot/body/bodyContent/browse/info/isDelegator = 1">
      <div id="delegatorModal" class="modal fade" role="dialog">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close" onclick="delegatorModal(0, '{sqroot/header/info/code/id}')">
                <span aria-hidden="true">&#215;</span>
              </button>              
              <h3>Are you sure you want to revoke your delegation?</h3>
            </div>
            <div class="modal-body">
              <p>
                Since you have delegated this module to someone else, you need to revoke your delegation to gain your full access to this module.
                But if you choose not to revoke your delegation, you will have no fully access to this module.
              </p>
              <p>If you want to set / modify your delegation later, please abandon this notification and go to your menu profile instead.</p>
            </div>
            <div class="modal-footer">
              <button id="btnRevokeLater" type="button" class="btn btn-default" data-dismiss="modal" onclick="delegatorModal(false)">No, I'll do it later</button>
              <button id="btnRevoke" type="button" class="btn btn-primary" data-loading-text="Revoking in process..." onclick="delegatorModal(true)">Yes, Revoke my delegate now</button>
            </div>
          </div>
        </div>
      </div>
      <script>
        $(document).ready(function(){
          var isShow = 1;
          var cname = '<xsl:value-of select="sqroot/header/info/code/id"/>_dmc';
          isShow = (getCookie(cname) == null || getCookie(cname) == undefined || getCookie(cname) == '') ? 1 : 0;
          if (isShow == 1) {
            $('#delegatorModal').modal({ backdrop: "static" });
          }          
        });                    
      </script>
    </xsl:if>

    <!--Delegation Info alert-->
    <xsl:if test="sqroot/body/bodyContent/browse/info/isDelegated = 1 and sqroot/body/bodyContent/browse/info/isDelegator = 0">
      <div id="delegationAlert" class="alert alert-warning alert-dismissable fade in">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&#215;</button>
        <h4>
          <ix class="icon fa fa-info"></ix>&#160; Attention
        </h4>
        You are assigned as a delegation for this module. Expand the "Advanced Filters Box" below to filtering between your documents or the delegators.
      </div>
      <script>
        $("#delegationAlert").fadeTo(10000, 800).slideUp(800, function(){
          $("#delegationAlert").slideUp(800);
        });
      </script>
    </xsl:if>

    <!-- Content Header (Page header) -->
    
    <!-- Main content-->

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
                        <xsl:value-of select="/sqroot/header/info/code/name/." /> List
                      
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
            <div class="wrap-post style1">
              <div class="divider15">&#160;</div>
              <div class="grid style2 v1" id="content-post1">
                <xsl:apply-templates select="sqroot/body/bodyContent/browse/content/row" />
              </div>
              <!-- /.blog-post -->
            </div>
          </div>
        </div>
      </div>
    </section>

    <script>
      replaceContent()
    </script>
  
  </xsl:template>

  <xsl:template match="sqroot/header/menus/menu[@code='newdocument']/submenus/submenu">
    
  </xsl:template>

  <xsl:template match="sqroot/body/bodyContent/browse/info/filters">

  </xsl:template>

  <xsl:template match="comboFilter">
    
  </xsl:template>

  <xsl:template match="sqroot/body/bodyContent/browse/info/states/state/substate">
    <xsl:variable name="titleState">
      <xsl:choose>
        <xsl:when test="@tRecord &gt; 0">
          <xsl:value-of select="@tRecord"/> records in total
        </xsl:when>
        <xsl:when test="@tRecord = 0">
          No record yet
        </xsl:when>
      </xsl:choose>    
    </xsl:variable>
      
    <!--<li data-toggle="tooltip" data-placement="right" title="{$titleState}">
      <a href="javascript:changestateid({@code})">
        <xsl:value-of select="translate(., $smallcase, $uppercase)"/>
        <xsl:if test="@tRecord">
          &#160;
          <span class="label label-default">
            <xsl:value-of select="@tRecord"/>
          </span>
        </xsl:if>
      </a>
    </li>-->

    <li>
      <a href="javascript:changestateid({@code})" title="">
        <xsl:value-of select="translate(., $smallcase, $uppercase)"/>
      </a>
    </li>
  </xsl:template>

  <xsl:template match="sqroot/body/bodyContent/browse/header/column[@mandatory=1]">
    <xsl:variable name="title">
      <xsl:choose>
        <xsl:when test=".!=''">
          <xsl:value-of select="translate(., $smallcase, $uppercase)" />
        </xsl:when>
        <xsl:otherwise>
          <xsl:value-of select="translate(@fieldName, $smallcase, $uppercase)" />
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>

    <xsl:variable name="tvalue">
      <xsl:choose>
        <xsl:when test="@order='asc' or @order='ASC'">
          <xsl:value-of select="$title"/> &amp;nbsp; &lt;ix class="fa fa-sort-alpha-asc" /&gt;
        </xsl:when>
        <xsl:when test="@order='desc' or @order='DESC'">
          <xsl:value-of select="$title"/> &amp;nbsp; &lt;ix class="fa fa-sort-alpha-desc" /&gt;
        </xsl:when>
        <xsl:otherwise><xsl:value-of select="$title"/></xsl:otherwise>
      </xsl:choose>    
    </xsl:variable>
    
    <th title="{$title}" data-order="{@order}">
      <a href="#" onclick="sortBrowse(this, 'header', '{../../info/code}', '{@fieldName}')" data-toggle="tooltip" title="Click to Sort" style="color:black;">
        <xsl:value-of select="$tvalue"/>
      </a>      
    </th>    
  </xsl:template>

  <xsl:template match="sqroot/body/bodyContent/browse/header/column[@docStatus=1]">
    STATUS
    <xsl:value-of select="translate(titleCaption/., $smallcase, $uppercase)" />
  </xsl:template>

  <xsl:template match="sqroot/body/bodyContent/browse/content/row">
    <article class="blog-post style1 v2">
      <div class="featured-post">
        <a href="?code=blog&amp;guid={@GUID}" title="{fields/field[@caption='blogTitle']/.}">
          <img src="ophcontent/documents/invoiceportal/{fields/field[@caption='primaryImg']/.}" alt="" style="width:350px; height:250px;" />
				</a>
      </div>
      <!-- /.featured-post -->
      <div class="entry-post-title">
        <div class="top-post">
          <xsl:value-of select="fields/field[@caption='blogCategory']/." />
        </div>
        <div class="post-title">
          <h2>
            <a href="?code=blog&amp;guid={@GUID}" title=""><xsl:value-of select="fields/field[@caption='blogTitle']/." /></a>
          </h2>
        </div>
        <div class="post-date">
          <xsl:value-of select="fields/field[@caption='blogDate']/." />
        </div>
      </div>
      <div class="content-post">
        <div style=" height: 50px !important; overflow: hidden;text-overflow: '----';">
          <xsl:value-of select="fields/field[@caption='blogContent']/." />
          
        </div>
        <a href="?code=blog&amp;guid={@GUID}">Read More</a>
      </div>
    </article>
  </xsl:template>

  <xsl:template match="fields/field[@mandatory=1]">
    <script>
      var m=$('#mandatory<xsl:value-of select="../../@GUID"/>').val();
      if (m!='' &#38;&#38; "<xsl:value-of select="." />" != '') m+='/';
      m+="<xsl:value-of select="." />";
      $('#mandatory<xsl:value-of select="../../@GUID"/>').val(m);
    </script>
    <td id="mandatory{../../@GUID}" class="expand-td" data-toggle="collapse" data-target="#{../@GUID}" data-parent="#{../@GUID}" data-field="{@caption}">
      <xsl:value-of select="." />
    </td>
  </xsl:template>

  <xsl:template match="fields/field[@mandatory='0']">
    <xsl:variable name="tbContent">
      <xsl:choose>
        <xsl:when test="@digit = 0 and .!=''">
          <xsl:value-of select="format-number(., '###,###,###,##0', 'dot-dec')"/>
        </xsl:when>
        <xsl:when test="@digit  = 1 and .!=''">
          <xsl:value-of select="format-number(., '###,###,###,##0.0', 'dot-dec')"/>
        </xsl:when>
        <xsl:when test="@digit  = 2 and .!=''">
          <xsl:value-of select="format-number(., '###,###,###,##0.00', 'dot-dec')"/>
        </xsl:when>
        <xsl:when test="@digit  = 3 and .!=''">
          <xsl:value-of select="format-number(., '###,###,###,##0.000', 'dot-dec')"/>
        </xsl:when>
        <xsl:when test="@digit  = 4 and .!=''">
          <xsl:value-of select="format-number(., '###,###,###,##0.0000', 'dot-dec')"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:value-of select="."/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:if test=". != ''">
      <span style="font-weight:bold;">
        <xsl:value-of select="@title" />
      </span>
      &#160;:&#160;
      <span data-field="{@caption}">
      <xsl:choose>
        <xsl:when test="@editor='anchor'">
          <a href="{$tbContent}">
            <xsl:value-of select="$tbContent" />
          </a>
        </xsl:when>
        <xsl:otherwise>
          <xsl:value-of select="$tbContent" />
          &#160;·&#160;
        </xsl:otherwise>
      </xsl:choose>
      </span>
    </xsl:if>
  </xsl:template>

  <xsl:template match="approvals">
    <xsl:for-each select="approval">
      <xsl:variable name="aprvStat">
        <xsl:choose>
          <xsl:when test="@status = 400">
            Approved
          </xsl:when>
          <xsl:when test="@status = 300">
            Rejected
          </xsl:when>
          <xsl:otherwise>
            Waiting for Approval
          </xsl:otherwise>
        </xsl:choose>
      </xsl:variable>
      <xsl:variable name="aprvColor">
        <xsl:choose>
          <xsl:when test="@status = 400">
            ORANGE
          </xsl:when>
          <xsl:when test="@status = 300">
            RED
          </xsl:when>
          <xsl:otherwise>
            GREY
          </xsl:otherwise>
        </xsl:choose>
      </xsl:variable>
      <xsl:variable name="aprvIcon">
        <xsl:choose>
          <xsl:when test="@status = 400">
            fa-user-circle-o
          </xsl:when>
          <xsl:when test="@status = 300">
            fa-user-times
          </xsl:when>
          <xsl:otherwise>
            fa-user
          </xsl:otherwise>
        </xsl:choose>
      </xsl:variable>
      <xsl:variable name="aprvName">
        <xsl:choose>
          <xsl:when test="@status = 400">
            &#160;&#160;<xsl:value-of select="name"/>
          </xsl:when>
          <xsl:when test="@status = 300">
            &#160;<xsl:value-of select="name"/>
          </xsl:when>
          <xsl:otherwise>
            &#160;&#160;&#160;&#160;<xsl:value-of select="name"/>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:variable>

      <div class="direct-chat-info clearfix">
        <span class="direct-chat-name pull-left">
          Level <xsl:value-of select="@level"/>
        </span>
      </div>
      <div class="direct-chat-info clearfix">
        <span class="direct-chat-name pull-left">
          <ix class="fa {$aprvIcon} fa-lg" aria-hidden="true" style="color:{$aprvColor};" title="{$aprvStat}"></ix>
        </span>
        <span class="direct-chat-name pull-left">
          <xsl:value-of select="$aprvName"/>
        </span>
        <span class="direct-chat-timestamp pull-right">
          <xsl:value-of select="date"/>
        </span>
      </div>
    </xsl:for-each>
  </xsl:template>

  <xsl:template match="talks/talk">
    <xsl:choose>
      <xsl:when test="@itsMe">
        <div class="direct-chat-msg right">
          <div class="direct-chat-info clearfix">
            <span class="direct-chat-name pull-right">
              <xsl:value-of select="@talkUser"/>
            </span>
            <span class="direct-chat-timestamp pull-left">
              <xsl:value-of select="@talkDateCaption"/>
            </span>
          </div>
          <img class="direct-chat-img" src="OPHContent/documents/{/sqroot/header/info/account}/{@talkUserProfile}" alt="{talkUser}"/>
          <div class="direct-chat-text">
            <xsl:value-of select="@comment"/>
          </div>
        </div>
      </xsl:when>
      <xsl:otherwise>
        <div class="direct-chat-msg">
          <div class="direct-chat-info clearfix">
            <span class="direct-chat-name pull-left">
              <xsl:value-of select="@talkUser"/>
            </span>
            <span class="direct-chat-timestamp pull-right">
              <xsl:value-of select="@talkDateCaption"/>
            </span>
          </div>
          <img class="direct-chat-img" src="OPHContent/documents/{/sqroot/header/info/account}/{@talkUserProfile}" alt="{talkUser}"/>
          <div class="direct-chat-text">
            <xsl:value-of select="@comment"/>
          </div>
        </div>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
</xsl:stylesheet>