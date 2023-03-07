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
  <xsl:variable name="nbCol">
    <xsl:value-of select="count(/sqroot/body/bodyContent/browse/header/column)" />
  </xsl:variable>
  
  <xsl:template match="/">
    <script>
      var code='<xsl:value-of select="/sqroot/body/bodyContent/browse/info/code"/>';
      cell_init(code);
      
      
      var columns_<xsl:value-of select="/sqroot/body/bodyContent/browse/info/code"/>=[];

    </script>
    <xsl:apply-templates select="sqroot/body/bodyContent/browse/children" />

    <xsl:variable name="documentstatus">
      <xsl:value-of select="/sqroot/body/bodyContent/form/info/state/status/."/>
    </xsl:variable>

    <div class="row">
      <div class="col-md-12" style="padding-right:40px; padding-left:40px;">
        <div class="box-header with-border" style="background:white; ">
          <h5 class="dashboard-title" style="text-align:center; margin-bottom:20px;">
            <xsl:value-of select="sqroot/body/bodyContent/browse/info/description"/>
          </h5>
          <div style=" margin-bottom:20px;">
            <input style="width:200px; border-radius:2px;" type="text" id="searchBox_{$lowerCode}" name="searchBox_{$lowerCode}"
            class="" placeholder="Enter search key..." value="{sqroot/body/bodyContent/browse/info/search}"
              onkeypress="searchTextChild(event, this.value, '{$lowerCode}');" />
          </div>

        </div>
        
        <div class="row">
          <div class="col-md-12">
            <div style="border:0px none white;box-shadow:none;" id="content_{/sqroot/body/bodyContent/browse/info/code}" class="box collapse in">
              <div style="border:0px none white;box-shadow:none;">
                <table class="table table-condensed strip-table-browse" style="border-collapse:collapse;">
                  <thead>
                    <tr style="border-top: 5px #DDDDDD solid; color:#6D6D77; font-weight:bold">
                      <th class="cell-recordSelectors" style="width:28px;">&#xA0;</th>
                      <xsl:apply-templates select="sqroot/body/bodyContent/browse/header"/>
                      <th  style="width:28px;">&#xA0;</th>
                    </tr>
                  </thead>
                  <tbody id="{$lowerCode}">
                    <xsl:apply-templates select="sqroot/body/bodyContent/browse/content/row"/>
                    <tr>
                      <td colspan="20" style="padding:0;">
                        <div class="browse-data accordian-body collapse"
                             id="{$lowerCode}00000000-0000-0000-0000-000000000000" aria-expanded="false">
                          Please Wait...
                        </div>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </div>
              <!-- /.box-body -->
             
              <div class="box-footer clearfix">
                <form id="formPO" style="display:inline-table;">
                  <input type="hidden" name="docguid" id="PKPOtoinvcdetl" value=""/>
                  <script>
                    code = 'toinvcdetl';
                    $('#PKPO'+code).val(getGUID());
                  </script>
                  <label class="input-group-btn">
                    <span class="flat-button-form border-radius-2">
                      PO
                      <input id ="docFile_hidden" name="docFile_hidden" type="file" data-code="{/sqroot/body/bodyContent/form/info/code/.}"
                            style="display: none;" multiple="" onchange="batchUpload('{/sqroot/body/bodyContent/browse/info/code/.}', '00000000-0000-0000-0000-000000000000', 40, 'formPO', 'PO')"/>
                    </span>
                  </label>
                  <input id="POdocFile" name="docFile" Value="" type="hidden" class="form-control" readonly="" />
                  <input name="docType" value="042559C7-2324-401F-A286-407039C8BB76" type="hidden" readonly="" />
                </form>
                <form id="formInv" style="display:inline-table;">
                  <input type="hidden" name="docguid" id="PKInvtoinvcdetl" value=""/>
                  <script>
                    code = 'toinvcdetl';
                    $('#PKInv'+code).val(getGUID());
                  </script>
                  <label class="input-group-btn">
                    <span class="flat-button-form border-radius-2">
                      Invoice
                      <input id ="docFile_hidden" name="docFile_hidden" type="file" data-code="{/sqroot/body/bodyContent/form/info/code/.}"
                           style="display: none;" multiple="" onchange="batchUpload('{/sqroot/body/bodyContent/browse/info/code/.}', '00000000-0000-0000-0000-000000000000', 40, 'formInv', 'Inv')"/>
                    </span>
                  </label>
                  <input id="InvdocFile" name="docFile" Value="" type="hidden" class="form-control" readonly="" />
                  <input name="docType" value="09005661-CD2C-4E73-A30A-3BB95B9201AA" type="hidden" readonly="" />
                </form>
                <form id="formDN" style="display:inline-table;">
                  <input type="hidden" name="docguid" id="PKDNtoinvcdetl" value=""/>
                  <script>
                    code = 'toinvcdetl';
                    $('#PKDN'+code).val(getGUID());
                  </script>
                  <label class="input-group-btn">
                    <span class="flat-button-form border-radius-2">
                      Delivery Note
                      <input id ="docFile_hidden" name="docFile_hidden" type="file" data-code="{/sqroot/body/bodyContent/form/info/code/.}"
                           style="display: none;" multiple="" onchange="batchUpload('{/sqroot/body/bodyContent/browse/info/code/.}', '00000000-0000-0000-0000-000000000000', 40, 'formDN', 'DN')"/>
                    </span>
                  </label>
                  <input id="DNdocFile" name="docFile" Value="" type="hidden" class="form-control" readonly="" />
                  <input name="docType" value="22A8AD32-5AFC-42A4-B4E0-14F24867A7EC" type="hidden" readonly="" />
                </form>
                <form id="formFaktur" style="display:inline-table;">
                  <input type="hidden" name="docguid" id="PKFakturtoinvcdetl" value=""/>
                  <script>
                    code = 'toinvcdetl';
                    $('#PKFaktur'+code).val(getGUID());
                  </script>
                  <label class="input-group-btn">
                    <span class="flat-button-form border-radius-2">
                      Faktur
                      <input id ="docFile_hidden" name="docFile_hidden" type="file" data-code="{/sqroot/body/bodyContent/form/info/code/.}"
                           style="display: none;" multiple="" onchange="batchUpload('{/sqroot/body/bodyContent/browse/info/code/.}', '00000000-0000-0000-0000-000000000000', 40, 'formFaktur', 'Faktur')"/>
                    </span>
                  </label>
                  <input id="FakturdocFile" name="docFile" Value="" type="hidden" class="form-control" readonly="" />
                  <input name="docType" value="F66B34CE-4167-4188-B523-05999E712B0B" type="hidden" readonly="" />
                </form>
                <form id="formDGT" style="display:inline-table;">
                  <input type="hidden" name="docguid" id="PKDGTtoinvcdetl" value=""/>
                  <script>
                    code = 'toinvcdetl';
                    $('#PKDGT'+code).val(getGUID());
                  </script>
                  <label class="input-group-btn">
                    <span class="flat-button-form border-radius-2">
                      DGT
                      <input id ="docFile_hidden" name="docFile_hidden" type="file" data-code="{/sqroot/body/bodyContent/form/info/code/.}"
                           style="display: none;" multiple="" onchange="batchUpload('{/sqroot/body/bodyContent/browse/info/code/.}', '00000000-0000-0000-0000-000000000000', 40, 'formDGT', 'DGT')"/>
                    </span>
                  </label>
                  <input id="DGTdocFile" name="docFile" Value="" type="hidden" class="form-control" readonly="" />
                  <input name="docType" value="9F6D8A18-9ADB-4E60-9704-965E9CEAE798" type="hidden" readonly="" />
                </form>
                
                <xsl:if test="(/sqroot/body/bodyContent/browse/info/permission/allowAdd/.)='1' and (/sqroot/body/bodyContent/browse/info/curState/@substateCode &lt; 500 or /sqroot/header/info/code/settingMode/. != 'T')">
                  <!--<button id="child_button_add" class="flat-button-form border-radius-2"  style="margin-right:5px;margin-bottom:5px;"
                          onclick="cell_add('{$lowerCode}', columns_{/sqroot/body/bodyContent/browse/info/code}, {count(/sqroot/body/bodyContent/browse/children)}, this);">ADD</button>-->
                </xsl:if>
                <button id="child_button_save" class="flat-button-form border-radius-2" style="display:none; margin-right:5px;margin-bottom:5px;" onclick="cell_save();">SAVE</button>
                <button id="child_button_cancel" class="flat-button-form flat-btn-grey " style="display:none; margin-right:5px;margin-bottom:5px;" onclick="cell_cancelSave()">CANCEL</button>

                <!--<xsl:if test="(/sqroot/body/bodyContent/browse/info/permission/allowDelete/.)='1' and (/sqroot/body/bodyContent/browse/info/curState/@substateCode &lt; 500 or /sqroot/header/info/code/settingMode/. != 'T')">
                  <button id="child_button_delete" class="flat-button-form flat-btn-grey " style="margin-right:5px;margin-bottom:5px;" onclick="cell_delete('{$lowerCode}', this)">DELETE</button>
                </xsl:if>-->
                <xsl:if test="(/sqroot/body/bodyContent/browse/info/permission/allowAdd/.)=1 and (/sqroot/body/bodyContent/browse/info/permission/allowExport/.)=1" >
                  <button id="child_button_download" class="btn btn-gray-a" style="margin-right:5px;margin-bottom:5px;"
                          onclick="downloadChild('{/sqroot/body/bodyContent/browse/info/code}', '')">DOWNLOAD</button>
                  <button id="child_button_upload" class="btn btn-gray-a" style="margin-right:5px;margin-bottom:5px;" onclick="javascript:$('#import_hidden').click();">UPLOAD...</button>

                  <!--<button type="button" class="buttonCream" id="download" name="download" onclick="javascript:PrintDirect('{/sqroot/body/bodyContent/browse/info/code}', '', 3, '', '', '');">DOWNLOAD</button>
                  <button type="button" class="buttonCream" id="upload" name="upload" onclick="javascript:showSubBrowseView('{/sqroot/body/bodyContent/browse/info/code}','',1,'');">UPLOAD</button>-->
                  <input id ="import_hidden" name="import_hidden" type="file" data-code="{/sqroot/body/bodyContent/browse/info/code}" style="visibility: hidden; width: 0; height: 0;" multiple="" />
                </xsl:if>                
                <xsl:if test="/sqroot/body/bodyContent/browse/info/nbPages > 1">
                  <ul class="pagination pagination-sm no-margin pull-right" id="childPageNo"></ul>
                  <script>
                    var code='<xsl:value-of select ="/sqroot/body/bodyContent/browse/info/code"/>';
                    var pageNo = '<xsl:value-of select ="/sqroot/body/bodyContent/browse/info/pageNo"/>';
                    var nbPages = '<xsl:value-of select ="/sqroot/body/bodyContent/browse/info/nbPages"/>';
                    childPageNo('childPageNo', code, pageNo, nbPages);
                  </script>
                </xsl:if>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </xsl:template>

  <xsl:template match="sqroot/body/bodyContent/browse/children">
    <xsl:apply-templates select="child" />
  </xsl:template>

  <xsl:template match="child">
    <xsl:if test="info/permission/allowBrowse='1'">
      <script>
        function loadChild_<xsl:value-of select ="$lowerCode"/>(GUID) {
        var code='<xsl:value-of select ="code/."/>';
        var pcode='<xsl:value-of select ="$lowerCode"/>';
        var parentKey='<xsl:value-of select ="parentkey/."/>';
        var browsemode='<xsl:value-of select ="browseMode/."/>';
        loadChild(code, parentKey, GUID, null, browsemode, pcode);
        }
      </script>
    </xsl:if>

  </xsl:template>
  <xsl:template match="sqroot/body/bodyContent/browse/header">
    <xsl:apply-templates select="column"/>
  </xsl:template>

  <xsl:template match="column">
    <th>
      <xsl:value-of select="."/>
      <script>
        var x=[];
        x.push('editor=<xsl:value-of select="@editor"/>');
        x.push('fieldname=<xsl:value-of select="@fieldName"/>');
        x.push('preview=<xsl:value-of select="@preview"/>');
        x.push('defaultValue=<xsl:value-of select="@defaultValue"/>');
        x.push('wf1=<xsl:value-of select="@wf1"/>');
        x.push('wf2=<xsl:value-of select="@wf2"/>');
        x.push('wf2=<xsl:value-of select="@align"/>');
        x.push('wf2=<xsl:value-of select="@digit"/>');
        columns_<xsl:value-of select="/sqroot/body/bodyContent/browse/info/code"/>.push(x);
      </script>
    </th>
  </xsl:template>

  <xsl:template match="sqroot/body/bodyContent/browse/content/row">
    <xsl:variable name="pageNo" select="/sqroot/body/bodyContent/browse/info/pageNo" />
    <tr id="tr1_{@code}{@GUID}" data-parent="#{/sqroot/body/bodyContent/browse/info/code}" data-target="#{@code}{@GUID}"
        data-code="{@code}" data-guid="{@GUID}"
        onmouseover="this.bgColor='lavender';this.style.cursor='pointer';" onmouseout="this.bgColor='white'">

      <xsl:if test="count(/sqroot/body/bodyContent/browse/children/child)>0">
        <td class="cell-parentSelector"></td>

      </xsl:if>
      
      <td class="cell-recordSelector"></td>
      <xsl:apply-templates select="fields/field"/>
      <td>
        <a href="javascript:btn_function('{@code}','{@GUID}','inactivate','{$pageNo}',10)" >
          <ix class="fa fa-trash fa-lg" data-toggle="tooltip" title="Delete" data-placement="left"/>
        </a>
      </td>
    </tr>
    <tr id="tr2_{@code}{@GUID}" style="display:none">
      <td colspan="100">
      </td>
    </tr>

  </xsl:template>

  <xsl:template match="fields/field">
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
          
          <xsl:choose>
            <xsl:when test="@editor = 'attachment' and .!=''">
              View
            </xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="."/>
            </xsl:otherwise>
          </xsl:choose>
          
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:choose>
      <xsl:when test="@editor = 'attachment' and .!=''">
        <td class="cell"   onclick="javascript:popTo('OPHcore/api/msg_download.aspx?fieldAttachment={@caption}&#38;code={../../@code}&#38;GUID={../../@GUID}');">
     
          <xsl:value-of select="$tbContent"/>
        </td>
      </xsl:when>
      <xsl:when test="@editor">
        <td class="cell cell-editor-{@editor}" data-id="{@id}" data-field="{@caption}" data-preview="{@preview}" data-wf1="{@wf1}" data-wf2="{@wf2}">
          <xsl:attribute name="align">
            <xsl:choose>
              <xsl:when test="@align=0">left</xsl:when>
              <xsl:when test="@align=1">center</xsl:when>
              <xsl:when test="@align=2">right</xsl:when>
            </xsl:choose>
          </xsl:attribute>
          <xsl:value-of select="$tbContent"/>
        </td>
      </xsl:when>
      <xsl:otherwise>
        <td class="cell" data-id="{@id}" data-field="{@caption}">
          <xsl:attribute name="align">
            <xsl:choose>
              <xsl:when test="@align=0">left</xsl:when>
              <xsl:when test="@align=1">center</xsl:when>
              <xsl:when test="@align=2">right</xsl:when>
            </xsl:choose>
          </xsl:attribute>
          <xsl:value-of select="$tbContent"/>
        </td>
      </xsl:otherwise>
    </xsl:choose>

  </xsl:template>

</xsl:stylesheet>
