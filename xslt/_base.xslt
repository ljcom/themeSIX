<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl" >

<xsl:template match="sqroot">

    <script>
      var meta = document.createElement('meta');
      meta.charset = "UTF-8";
      loadMeta(meta);

      var meta = document.createElement('meta');
      meta.httpEquiv = "X-UA-Compatible";
      meta.content = "IE=edge";
      loadMeta(meta);

      var meta = document.createElement('meta');
      meta.name = "viewport";
      meta.content = "width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no";
      loadMeta(meta);


      loadScript('OPHContent/themes/themeSIX/js/main.js');

      $("body").addClass("header_sticky");
      document.title='<xsl:value-of select="/sqroot/header/info/title"/>';
      
      var n=new Date(Date.now());
      $('#cp').html($('#cp').html().split('#year#').join(n.getFullYear()));

      //loadContent(1);
    </script>

    <!-- Boostrap style -->

    <!--link href="./images/icons/favicon.png" rel="shortcut icon"-->


    <div class="preloader">
      <div class="dizzy-gillespie"></div>
    </div>
    <!-- /.preloader -->

    <!-- *** NOTIFICATION MODAL -->
    <div id="notiModal" class="modal fade" role="dialog">
      <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&#215;</button>
            <h4 class="modal-title" id="notiTitle">Modal Header</h4>
          </div>
          <div class="modal-body" id="notiContent">
            <p>Some text in the modal.</p>
          </div>
          <div class="modal-footer">
            <button id="notiBtn" type="button" class="btn btn-default" data-dismiss="modal">Close</button>
          </div>
        </div>

      </div>
    </div>


    <!-- *** AGREE MODAL -->
    <div id="agreeModal" class="modal fade" role="dialog">
      <div class="modal-dialog modal-lg">

        <!-- Modal content-->
        <div class="modal-content">
          <div class="modal-header" style="border-bottom:none;">
            <!--<button type="button" class="close" data-dismiss="modal">&#215;</button>-->
            <div style="text-align:center; margin-top:20px;">
            <img src="ophcontent/documents/invoiceportal/file/logoloreal.png" style="width:200px; text-align:center"></img>
            </div>
            <!--<h4 class="modal-title" id="notiTitle" style="text-align:center">L'OREAL INDONESIA</h4>-->
          </div>
          <div class="modal-body" id="agreeContent" style="padding:30px;">
            <p style="font-family:arial; text-align:justify">
              Dear All Suppliers of PT L'Oreal Indonesia,
              <br/><br/>
              All suppliers working with L'OREAL can expect to be treated with integrity and respect. L'OREAL's Code of Business Ethics contains a specific section on "Supplier Selection and Treatment" where L'OREAL's commitments to all its suppliers are set out.
              <br/><br/>
              All L'OREAL employees worldwide receive a personal copy of L'OREAL's Code of Business Ethics and all employees in contact with suppliers also receive a detailed guidebook on how to live up to these commitments.
              <br/><br/>
              At L'OREAL, we also actively seek out and favour business partners who share our values and our ethical commitments.
              <br/><br/>
              Namely, as a L'OREAL Supplier, you expressly agree not to offer any "kick-backs" or facilitation fees to a L'OREAL employee or agent. This includes offering any position as employee, officer, consultant, agent or representative or any directorship or shareholding in your company to any of L'OREAL's employees, agents or their family members.
              <br/><br/>
              You shall not give any gifts and/or entertainment to L'OREAL employees or agents, except for those not exceeding Rp 250,000,- per beneficiary (company) and Rp 500,000,- per calendar year.. This includes door prizes, travel accommodations and tickets, meals, etc.
              <br/><br/>
              You furthermore undertake to disclose any situation which could be considered to create a real or perceived conflict of interest. This includes any relationship with a L'OREAL employee or agent and/or holding any position of interest in a competitor, customer, supplier or any other business partner of L'OREAL.
              <br/><br/>
              Finally, you further undertake not to tolerate, permit or engage in bribery or corruption when dealing with public officials or individuals in the private sector or permit or engage in any activity which could serve the purpose of money-Laundering when carrying out work for the benefit of PT L'Oreal Indonesia.
              <br/><br/>
              If you become aware of any breach of L'OREAL's Code of Business Ethics by a L'OREAL employee or agent, you should immediately report this to:
              <br/><br/>
              <i class="fa fa-arrow-right" aria-hidden="true" style="margin-left:10px;"></i> L'OREAL's Country Finance Director: Adrien STEINER (suppliers.lorealindo@lorealcom)
              <br/><br/>
              <i class="fa fa-arrow-right" aria-hidden="true" style="margin-left:10px;"></i> L'OREAL's Asia Pacific Zone Head of Purchasing Non-Industrial Categories : Wenjing YUAN 
               <br/>
              (supplierslorealapac@loreal.com)
              <br/><br/>
              We would be grateful if you could sign and return a copy of te present letter to Mr.David FERDIAZ (Purchasing Director of PT L’Oreal Indonesia/+6221-29886666)
              <br/><br/>
              <input type="checkbox" name="agree1" id="agree1" onchange="changeBtn()"/> I agree to the Terms and Conditions
            </p>
              <hr/>
            <div style="padding-bottom:20px;border-bottom:1px solid #eee">
              <input type="checkbox" name="agree2" id="agree2" onchange="changeBtn()"/> <span style="font-family:arial;"> I have read and agree to the </span><a href="ophcontent/documents/InvoicePortal/file/TheWayWeBuy.pdf"  style="font-weight:600; text-decoration: underline;" target="_blank">THE WAY WE BUY</a> and <a href="ophcontent/documents/InvoicePortal/file/RespectPoLetter.pdf"  style="font-weight:600; text-decoration: underline;" target="_blank"> RESPECTING PO LETTER </a>
            </div>
          </div>
          <div class="modal-footer" style="border-top:none;">
            <div class="btn-contact-form" style="text-align:center;">
              <button id="btn_submitLogin" class="flat-button-form flat-btn-grey border-radius-2" onclick="signIn('{/sqroot/header/info/account}')" disabled="disabled" style="cursor: not-allowed;">Please checklist all conditions...</button>&#160;
            </div>
          </div>
        </div>

      </div>
    </div>
    <div class="boxed">
        <div class="container-fluid">
          <div id="logo" class="logo float-left" style="float:left;">
            <img src="ophcontent/themes/themesix/images/logo-gereja-bosco-s.png" style="margin-top:20px; max-width:300px;"/>
          </div>
          <!-- /.icon-header -->
          <ul class="flat-infomation">
            <!--xsl:apply-templates select="/sqroot/header/menus/menu[@code='primaryfront']/submenus/submenu" /--> 
            
          </ul>
          <!-- /.flat-infomation -->
          <div class="nav-wrap">
            <div class="btn-menu">
              <span>dssadas</span>
            </div>
            <!-- //mobile menu button -->
            <div id="mainnav" class="mainnav">
              <ul class="menu" style="margin-right:0;">
                <xsl:apply-templates select="/sqroot/header/menus/menu[@code='primaryfront']/submenus/submenu" />
                
                <xsl:choose>
                  <xsl:when test="/sqroot/header/info/user/userGUID/.">
                    <li class="has-submenu">
                      <a href="#" title="">
                        Welcome <xsl:value-of select="/sqroot/header/info/user/userName" /> <i class="fa fa-angle-down" aria-hidden="true"></i>
                      </a>
                      <div class="submenu">
                        <ul>
                          <li>
                            <a href="#" title="">Profile</a>
                          </li>
                          <li>
                            <a href="javascript:signOut()" title="">Log Out</a>
                          </li>
                        </ul>
                      </div>
                    </li>
                    
                  </xsl:when>
                  <xsl:otherwise>
                    <li>
                      <a href="?code=login" title="">
                        Sign In
                      </a>
                    </li>
					        <li>
                      <a href="?code=login&amp;mode=1" title="" class="signUpBtn">
                        Sign Up
                      </a>
                    </li>
                  </xsl:otherwise>
                </xsl:choose>
              </ul>
              <!-- /.menu -->
            </div>
            <!-- /.mainnav -->
          </div>
          <!-- /.nav-wrap -->
          <div class="clearfix"></div>
        </div>
        <!-- /.container-fluid -->


        <xsl:apply-templates select="/sqroot/header" />
      <!-- /.header -->


     
      <div id="contentWrapper">
        <xsl:apply-templates select="/sqroot/body" />
      </div>



      <section class="flat-partner background">
        <div class="container">
          <div class="row">
            <div class="col-md-12">
              <!--<ul class="owl-carousel">
                <li>
                  <img src="images/partner/01.png" alt="">
							</li>
                <li>
                  <img src="images/partner/02.png" alt="">
							</li>
                <li>
                  <img src="images/partner/03.png" alt="">
							</li>
                <li>
                  <img src="images/partner/04.png" alt="">
							</li>
                <li>
                  <img src="images/partner/05.png" alt="">
							</li>
                <li>
                  <img src="images/partner/06.png" alt="">
							</li>
              </ul>-->
              <!-- /.owl-carousel -->
            </div>
            <!-- /.col-md-12 -->
          </div>
          <!-- /.row -->
        </div>
        <!-- /.container -->
      </section>
      <!-- /.flat-partner background -->


      <section class="footer-bottom">
        <xsl:apply-templates select="/sqroot/footer" />
        <!-- /.container -->
      </section>
      <!-- /.footer-bottom -->

      <div class="button-go-top">
        <a href="#" title="" class="go-top">
          <i class="fa fa-chevron-up"></i>
        </a>
        <!-- /.go-top -->
      </div>
      <!-- /.button-go-top -->

    </div>
    <!-- /.boxed -->


  </xsl:template>

  <xsl:template match="/sqroot/header/menus/menu[@code='primaryfront']/submenus/submenu">
    <xsl:choose>
      <xsl:when test="(@type)='treeroot'">
        <li class="has-submenu">
          <a href="#" title="">
            <xsl:value-of select="caption/." />&#160;<i class="fa fa-angle-down" aria-hidden="true"></i>
          </a>
          <div class="submenu">
            <ul>
              <xsl:apply-templates select="submenus/submenu[@type='treeview']" />
            </ul>
          </div>
        </li>
      </xsl:when>
      <xsl:when test="(@type)='label'">
        <li class="has-menu-mega">
          <a href="{pageURL/.}" title="">
            <xsl:value-of select="caption/." />
          </a>
        </li>
      </xsl:when>
    </xsl:choose>
    <!--<li class="dropdown">
      <xsl:choose>
        <xsl:when test="(@type)='treeroot'">
          <a href="{pageURL/.}" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" id="prim-{caption/.}">
            <xsl:value-of select="caption/." />
          </a>
          <ul class="dropdown-menu dropdown-menu-right">
            <xsl:apply-templates select="submenus/submenu[@mode='treeview']" />
          </ul>
        </xsl:when>
        <xsl:when test="(@type)='label'">
          <a href="{pageURL/.}" id="prim-{caption/.}"  onclick="clearCookies()">
            <xsl:value-of select="caption/." />
          </a>
        </xsl:when>
      </xsl:choose>
    </li>-->
  </xsl:template>



  <xsl:template match="submenus/submenu[@type='treeview']">
    <li style="line-height:24px;">
      <a href="{pageURL/.}" title=""
        style="padding-top:6px;padding-bottom:6px;padding-right:5px">
        <xsl:value-of select="caption/." />
      </a>
    </li>
  </xsl:template>

  <xsl:template match="/sqroot/footer"> 
    <div class="container">
          <div class="row">
            <div class="col-md-12">
              <!--<ul class="social-ft">
                <li>
                  <a href="" title="Facebook">
                    <i class="fa fa-facebook" aria-hidden="true"></i>
                  </a>
                </li>
                <li>
                  <a href="" title="Twitter">
                    <i class="fa fa-twitter" aria-hidden="true"></i>
                  </a>
                </li>
                <li>
                  <a href="" title="Google Plus">
                    <i class="fa fa-google-plus" aria-hidden="true"></i>
                  </a>
                </li>
                <li>
                  <a href="" title="Instagram">
                    <i class="fa fa-instagram" aria-hidden="true"></i>
                  </a>
                </li>
                <li>
                  <a href="" title="Pinterest">
                    <i class="fa fa-pinterest" aria-hidden="true"></i>
                  </a>
                </li>
                <li>
                  <a href="" title="Tripadvisor">
                    <i class="fa fa-tripadvisor" aria-hidden="true"></i>
                  </a>
                </li>
              </ul>-->
              
              <p id="cp" class="copyright" style="font-family:poppins">
                Copyright &#169; #year# <a href="#" title="">OPERAHOUSE</a>. All Rights Reserved
              </p>
            </div>
          </div>
        </div>
  </xsl:template>
</xsl:stylesheet>