<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl" >

  <xsl:template match="/">
    <script>
      loadScript('OPHContent/themes/themeSIX/js/main.js');

      loadScript('OPHContent/cdn/revolution/js/jquery.themepunch.tools.min.js');
      loadScript('OPHContent/cdn/revolution/js/jquery.themepunch.revolution.min.js');
      loadScript('OPHContent/cdn/revolution/js/slider.js');


      loadScript('OPHContent/cdn/revolution/js/extensions/revolution.extension.actions.min.js');
      loadScript('OPHContent/cdn/revolution/js/extensions/revolution.extension.carousel.min.js');
      loadScript('OPHContent/cdn/revolution/js/extensions/revolution.extension.kenburn.min.js');
      loadScript('OPHContent/cdn/revolution/js/extensions/revolution.extension.layeranimation.min.js');
      loadScript('OPHContent/cdn/revolution/js/extensions/revolution.extension.migration.min.js');
      loadScript('OPHContent/cdn/revolution/js/extensions/revolution.extension.navigation.min.js');
      loadScript('OPHContent/cdn/revolution/js/extensions/revolution.extension.parallax.min.js');
      loadScript('OPHContent/cdn/revolution/js/extensions/revolution.extension.slideanims.min.js');
      loadScript('OPHContent/cdn/revolution/js/extensions/revolution.extension.video.min.js');

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

      $("body").addClass("header_sticky");
      document.title='<xsl:value-of select="/sqroot/header/info/title"/>';

      $('.tp-caption').data('frames', [{"delay":0,"split":"chars","splitdelay":0.05,"speed":500,"frame":"0","from":"x:[105%];z:0;rX:45deg;rY:0deg;rZ:90deg;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","to":"o:1;","ease":"Power4.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]);
      
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
    <div class="boxed">

      <section  id="header" class="header style2 v7">
        <div class="container-fluid">
          <div id="logo" class="logo float-left" style="float:left;">
            <img src="ophcontent/themes/themesix/images/logo.png" style="margin-top:20px"/>
          </div>
          <!-- /.icon-header -->
          <ul class="flat-infomation">
            <xsl:apply-templates select="sqroot/header/menus/menu[@code='specialfront']/submenus/submenu" />
          </ul>
          <!-- /.flat-infomation -->
          <div class="nav-wrap">
            <div class="btn-menu">
              <span>dssadas</span>
            </div>
            <!-- //mobile menu button -->
            <div id="mainnav" class="mainnav">
              <ul class="menu" style="margin-right:0;">
                <xsl:apply-templates select="sqroot/header/menus/menu[@code='primaryfront']/submenus/submenu" />
                <xsl:choose>
                  <xsl:when test="/sqroot/header/info/user/userGUID/.">
                    <li class="has-submenu" style="width:150px;">
                      <a href="#" title="">
                        <xsl:value-of select="/sqroot/header/info/user/userNameAlias/." />
                      </a>
                      <div class="submenu">
                        <ul>
                          <li>
                            <a href="?code=userprof&amp;guid={/sqroot/header/info/user/userGUID/.}" title="">Profile</a>
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
        <!--<div class="menu-canvas">
          <div class="close">
            <i class="fa fa-times" aria-hidden="true"></i>
          </div>
          <div class="widget-about">
            <h5>We Are yolo</h5>
            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim.</p>
          </div>
          <div class="widget-contact">
            <h5>Contact Us</h5>
            <ul>
              <li>88 Landsriver St, Califonia, USA</li>
              <li>(04) 122 00 111</li>
              <li>
                <a href="#" title="">support@elegant.com</a>
              </li>
            </ul>
          </div>
          <div class="share-link">
            <ul class="social-ft">
              <li>
                <a href="" title="Facebook">
                  <i class="ti-facebook" aria-hidden="true"></i>
                </a>
              </li>
              <li>
                <a href="" title="Twitter">
                  <i class="ti-twitter-alt" aria-hidden="true"></i>
                </a>
              </li>
              <li>
                <a href="" title="Google Plus">
                  <i class="ti-google" aria-hidden="true"></i>
                </a>
              </li>
              <li>
                <a href="" title="Instagram">
                  <i class="fa fa-instagram" aria-hidden="true"></i>
                </a>
              </li>
              <li>
                <a href="" title="Dribble">
                  <i class="ti-dribbble" aria-hidden="true"></i>
                </a>
              </li>
              <li>
                <a href="" title="Pinterest">
                  <i class="ti-pinterest" aria-hidden="true"></i>
                </a>
              </li>
            </ul>
            <p class="copyright">Copyright ©2017 Yolo. All Rights Reserved</p>
          </div>
        </div>-->
      </section>
      <!-- /.header -->

      <section class="tp-banner">
        <div id="rev_slider_1078_1_wrapper" class="rev_slider_wrapper fullwidthbanner-container" data-alias="classic4export" data-source="gallery" style="margin:0px auto;background-color:transparent;padding:0px;margin-top:0px;margin-bottom:0px;">
          <!-- START REVOLUTION SLIDER 5.3.0.2 auto mode -->
          <div id="rev_slider_1078_2" class="rev_slider fullwidthabanner" style="display:none;" data-version="5.3.0.2">
            <div class="slotholder"></div>
            <ul>
              <!-- SLIDE  -->

              <!-- SLIDE 1 -->
              <li data-index="rs-3050" data-transition="crossfade" data-slotamount="7" data-hideafterloop="0" data-hideslideonmobile="off"  data-easein="Power3.easeInOut" data-easeout="Power3.easeInOut" data-masterspeed="2000"    data-rotate="0"  data-saveperformance="off"  data-title="Ken Burns" data-param1="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-param10="" data-description="">
                <!-- MAIN IMAGE -->
                <img src="ophcontent/themes/themesix/images/revolution/slider2.jpg"  alt=""  data-bgposition="center center" data-kenburns="off" data-duration="30000" data-ease="Linear.easeNone" data-scalestart="100" data-scaleend="120" data-rotatestart="0" data-rotateend="0" data-offsetstart="0 0" data-offsetend="0 0" data-bgparallax="10" class="rev-slidebg" data-no-retina="" />

                <!-- LAYERS -->

                <!-- LAYER NR. 12 -->
                <div class="tp-caption sub-title color-black ff-2"
	                            id="slide-3049-layer-1"
	                            data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
	                            data-y="['middle','middle','middle','middle']" data-voffset="['-95','-95','-95','-95']"
	                            data-fontsize="['100','60','40','22']"
	                            data-lineheight="['120','100','80','60']"
	                            data-fontweight="['300','300','300','300']"
	                            data-width="auto"
	                            data-height="auto"
	                            data-type="text"
	                            data-whitespace="nowrap"
	                            data-responsive_offset="on"
	                            data-textAlign="['center','center','center','center']"
	                            data-paddingright="[0,0,0,0]"
	                            data-paddingbottom="[0,0,0,0"
	                            data-paddingleft="[0,0,0,0]"

	                            style="z-index: 16; white-space: normal;font-weight: 300;color: black;">
                  Invoice Portal
                </div>
                <script>
                  $('.tp-caption').data('frames', [{"delay":0,"split":"chars","splitdelay":0,"speed":500,"frame":"0","from":"x:[105%];z:0;rX:45deg;rY:0deg;rZ:90deg;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","to":"o:1;","ease":"Power4.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]);
                </script>

                <div class="tp-caption color-black ff-2"
	                            data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
	                            data-y="['middle','middle','middle','middle']" data-voffset="['15','15','15','15']"
	                            data-fontsize="['20','20','18','18']"
	                            data-lineheight="['26','26','26','26']"
	                            data-fontweight="['400','400','400','400']"
	                            data-width="['750','750','600','300']"
	                            data-height="auto"
	                            data-type="text"
	                            data-whitespace="normal"
	                            data-responsive_offset="on"
	                           	data-textAlign="['center','center','center','center']"
	                            data-paddingright="[0,0,0,0]"
	                            data-paddingbottom="[0,0,0,0"
	                            data-paddingleft="[0,0,0,0]"

	                            style="z-index: 16; white-space: nowrap;font-weight: 300;color: black;">
                  Simplification and better control in vendor invoice process by remove invoice submission through mail, to reduce miss-process and human error.
                  Easy Integration, File Sharing between vendor and internally, Private and Secure.
                </div>

                <div class="center">
                  <a href="?code=ToINCS" target="_self" class="tp-caption flat-button-slider bg-blue color-white"
                         
                    data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
                    data-y="['middle','middle','middle','middle']" data-voffset="['119','119','119','119']"
                    data-fontsize="['12','12','12','12']"
                    data-lineheight="['46','46','46','44']"
                    data-fontweight="['600','600','600','600']"
                    data-textAlign="['center', 'center', 'center', 'center']"
                    data-width="210"
                    data-height="46">
                    SUBMIT NOW
                  </a>
                  <!-- END LAYER LINK -->
                </div>
              </li>
              <li data-index="rs-3049" data-transition="slideremovedown" data-slotamount="7" data-hideafterloop="0" data-hideslideonmobile="off"  data-easein="Power3.easeInOut" data-easeout="Power3.easeInOut" data-masterspeed="2000"    data-rotate="0"  data-saveperformance="off"  data-title="Ken Burns" data-param1="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-param10="" data-description="">

                <!-- MAIN IMAGE -->
                <img src="ophcontent/themes/themesix/images/revolution/slider3.jpg"  alt=""  data-bgposition="center center" data-kenburns="off" data-duration="30000" data-ease="Linear.easeNone" data-scalestart="100" data-scaleend="120" data-rotatestart="0" data-rotateend="0" data-offsetstart="0 0" data-offsetend="0 0" data-bgparallax="10" class="rev-slidebg" data-no-retina="" />

              </li>
            </ul>
          </div>



        </div>
      </section>
      <!--tpbanner-->

      <section class="flat-iconbox style8">
        <div class="container">
          <div class="row">
            <div class="col-md-12">
              <div class="flat-title">
                <h2>Our Services</h2>
              </div>
            </div>
            <!-- /.col-md-12 -->
          </div>
          <!-- /.row -->
          <div class="row">
            <div class="col-lg-4">
              <div class="iconbox center style1 v5 border-radius-5">
                <div class="box-header">
                  <div class="icon">
                    <svg version="1.1" xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="70px" height="70px" viewBox="0 0 80 80" xml:space="preserve" fill="transparent">
                                        <circle class="circle is-inner" cx="40" cy="40" r="36"></circle>
                                        <circle class="circle is-outer" cx="40" cy="40" r="36"></circle>
                                    </svg>
                    <span class="ti-lock font-size-30"></span>
                  </div>
                  <div class="box-title">
                    <a href="#" title="">Data Privacy</a>
                  </div>
                </div>
                <!-- /.box-header -->
                <div class="box-content">
                  <p>Protect your personal information from being accessed by a third party.</p>
                </div>
                <!-- /.box-content -->
              </div>
              <!-- /.iconbox style1 -->
            </div>
            <!-- /.col-lg-4 -->
            <div class="col-lg-4">
              <div class="iconbox center style1 v5 border-radius-5">
                <div class="box-header">
                  <div class="icon">
                    <svg version="1.1" xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="70px" height="70px" viewBox="0 0 80 80" xml:space="preserve" fill="transparent">
                                        <circle class="circle is-inner" cx="40" cy="40" r="36"></circle>
                                        <circle class="circle is-outer" cx="40" cy="40" r="36"></circle>
                                    </svg>
                    <span class="ti-time font-size-30"></span>
                  </div>
                  <div class="box-title">
                    <a href="#" title="">Data History</a>
                  </div>
                </div>
                <!-- /.box-header -->
                <div class="box-content">
                  <p>All past created data will always be stored in big storage space.</p>
                </div>
                <!-- /.box-content -->
              </div>
              <!-- /.iconbox style1 -->
            </div>
            <!-- /.col-lg-4 -->
            <div class="col-lg-4">
              <div class="iconbox center style1 v5 border-radius-5">
                <div class="box-header">
                  <div class="icon">
                    <svg version="1.1" xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="70px" height="70px" viewBox="0 0 80 80" xml:space="preserve" fill="transparent">
                                        <circle class="circle is-inner" cx="40" cy="40" r="36"></circle>
                                        <circle class="circle is-outer" cx="40" cy="40" r="36"></circle>
                                    </svg>
                    <span class="ti-stats-up font-size-30"></span>
                  </div>
                  <div class="box-title">
                    <a href="#" title="">Easier Tracking</a>
                  </div>
                </div>
                <!-- /.box-header -->
                <div class="box-content">
                  <p>Make it easy to search for data that has been created.</p>
                </div>
                <!-- /.box-content -->
              </div>
              <!-- /.iconbox style1 -->
            </div>
            <!-- /.col-lg-4 -->
          </div>
          <!-- /.row -->
        </div>
        <!-- /.container-fluid -->
      </section>
      <!-- /.flat-iconbox -->

      <!--<section class="flat-testimonial">
        <div class="container">
          <div class="row">
            <div class="col-md-12">
              <div class="testimonial owl-carousel-2 style1 v1 no-border-top">
                <div class="testimonial-item">
                  <div class="avatar">
                    <img src="ophcontent/themes/themesix/images/testimonial/1.jpg" alt="" />
								  </div>
                  <blockquote>
                    <span>“</span>
                    <p>I wanted to mention that these days, when the opposite of good customer and tech support tends to be the norm, it's always great having a team like you guys at Yolo! So, be sure that I'll always spread the word about how good your product is and the extraordinary level of support that you provide any time there is any need for it.</p>
                    <div class="info-author">
                      <div class="name">
                        Ollie Schneider
                      </div>
                      <div class="option">
                        - CEO DeerCreative
                      </div>
                    </div>
                  </blockquote>
                  --><!-- /blockquote --><!--
                </div>
                <div class="testimonial-item">
                  <div class="avatar">
                    <img src="ophcontent/themes/themesix/images/testimonial/1.jpg" alt="" />
                  </div>
                  <blockquote>
                    <span>“</span>
                    <p>I wanted to mention that these days, when the opposite of good customer and tech support tends to be the norm, it's always great having a team like you guys at Yolo! So, be sure that I'll always spread the word about how good your product is and the extraordinary level of support that you provide any time there is any need for it.</p>
                    <div class="info-author">
                      <div class="name">
                        Ollie Schneider
                      </div>
                      <div class="option">
                        - CEO DeerCreative
                      </div>
                    </div>
                  </blockquote>
                  --><!-- /blockquote --><!--
                </div>
                --><!-- /.testimonial-item --><!--
              </div>
              --><!-- /.testimonial owl-carousel-1 --><!--
            </div>
            --><!-- /.col-md-12 --><!--
          </div>
          --><!-- /.row --><!--
        </div>
        --><!-- /.container --><!--
      </section>-->
      <!-- /.flat-testimonial -->

      <section class="flat-tabs">
        <div class="container">

          <div class="row">
            <div class="col-md-12">
              <div class="flat-title">
                <h2>How To Submit Invoice</h2>
              </div>
            </div>
            <!-- /.col-md-12 -->
          </div>
          <div class="row">
            <div class="col-md-12">
              <div class="tab-about style2 v1">
                <ul class="tab-list-about">
                  <li class=" tab-item active">
                    <div class="box-header background no-border">
                      <div class="icon">
                        <span class="ti-flag"></span>
                      </div>
                      <div class="box-title">
                        <h6>Mandatory Documents</h6>
                      </div>
                    </div>
                  </li>
                  <!-- /.tab-item -->
                  <li class="tab-item">
                    <div class="box-header background no-border">
                      <div class="icon">
                        <span class="ti-receipt"></span>
                      </div>
                      <div class="box-title">
                        <h6>Invoice Information</h6>
                      </div>
                    </div>
                  </li>
                  <!-- /.tab-item -->
                  <li class="tab-item">
                    <div class="box-header background no-border">
                      <div class="icon">
                        <span class="ti-menu-alt"></span>
                      </div>
                      <div class="box-title">
                        <h6>Invoice Format</h6>
                      </div>
                    </div>
                  </li>
                  <!-- /.tab-item -->
                  <li class="tab-item">
                    <div class="box-header background no-border">
                      <div class="icon">
                        <span class="ti-info-alt"></span>
                      </div>
                      <div class="box-title">
                        <h6>Others</h6>
                      </div>
                    </div>
                  </li>
                  <!-- /.tab-item -->
                  
                  <!-- /.tab-item -->
                </ul>
                <!-- /.tab-list-about -->
                <div class="content-tab">
                  <div class="content-inner overflow">
                    
                    <!-- /.one-half -->
                    <div class="">
                      <ul class="padding-left-100">

                        <li>
                          <i class="fa fa-check color-default" aria-hidden="true" style="margin-left:-30px"></i>Invoice asdasdasa
                        </li>
                        <li>
                          <i class="fa fa-check color-default" aria-hidden="true" style="margin-left:-30px"></i>Purchase Order (PO)
                        </li>
                        <li>
                          <i class="fa fa-check color-default" aria-hidden="true" style="margin-left:-30px"></i>Delivery Note (for goods), Statement of Work Completion or Certificate of Acceptance or Handover Certificate ( for services) that is signed by Loreal Stakeholder
                        </li>
                        <li>
                          <i class="fa fa-check color-default" aria-hidden="true" style="margin-left:-30px"></i>Tax Invoice ( if any)
                        </li>
                        <li>
                          <i class="fa fa-check color-default" aria-hidden="true" style="margin-left:-30px"></i>Other necessary documents stated in Contract
                        </li>

                      </ul>
                      <!-- /.ul -->
                    </div>
                    <!-- /.one-half -->
                  </div>
                  <!-- /.content-inner -->
                  <div class="content-inner overflow">
                    <div class="">
                      
                      <h5 class="padding-left-100"> All invoices must include the following information :</h5>
                      <br/>
                      <!-- /.text-tabs -->
                      <ul class="padding-left-100">
                        <li>
                          <i class="fa fa-check color-default" aria-hidden="true" style="margin-left:-30px"></i>PT. L'Oreal Indonesia Purchase Order (PO) number, please note that our PO number consist of 10 digit starting with 70xxxxxxxx
                        </li>
                        <li>
                          <i class="fa fa-check color-default" aria-hidden="true" style="margin-left:-30px"></i>Agreed Payment Term
                        </li>
                        <li>
                          <i class="fa fa-check color-default" aria-hidden="true" style="margin-left:-30px"></i>Invoice Number, number of Delivery Note or Statement of Work Completion or Certificate of Acceptance or Handover Certificate
                        </li>
                        <li>
                          <i class="fa fa-check color-default" aria-hidden="true" style="margin-left:-30px"></i>Invoice Date, Invoice date must not be earlier than date of the PO, MoreOver, the gap between invoice date and invoice receipt date by invoicing PT. L'Oreal Indonesia is at the maximum 1 (one) month
                        </li>
                        <li>
                          <i class="fa fa-check color-default" aria-hidden="true" style="margin-left:-30px"></i>Detail description of the goods/services supplied, must be the same as description in PO
                        </li>
                        <li>
                          <i class="fa fa-check color-default" aria-hidden="true" style="margin-left:-30px"></i>Complete authorized signature and official company stamp
                        </li>

                      </ul>
                    </div>
                    <!-- /.one-half -->
                  </div>
                  <!-- /.content-inner -->
                  <div class="content-inner overflow">

                    <!-- /.one-half -->
                    <div class="">
                      <ul class="padding-left-100">
                        <li>
                          <i class="fa fa-check color-default" aria-hidden="true" style="margin-left:-30px"></i>PDF file format
                        </li>
                        <li>
                          <i class="fa fa-check color-default" aria-hidden="true" style="margin-left:-30px"></i>Not JPEG format or another picture format
                        </li>
                        <li>
                          <i class="fa fa-check color-default" aria-hidden="true" style="margin-left:-30px"></i>One document attached is not exceed than 2 MB
                        </li>
                       
                      </ul>
                      <!-- /.ul -->
                    </div>
                    <!-- /.one-half -->
                  </div>
                  <!-- /.content-inner -->
                  <div class="content-inner overflow">
                    <div class="">
                      <ul class="padding-left-100">

                        <li>
                          <i class="fa fa-check color-default" aria-hidden="true" style="margin-left:-30px"></i>Invoice to be received at the maximum 30 days after definitive acceptance of delivery goods/completed services
                        </li>
                        
                      </ul>
                    </div>
                    <!-- /.one-half -->
                    
                    <!-- /.one-half -->
                  </div>
                  <!-- /.content-inner -->
                  <div class="content-inner overflow">
                    <div class="one-half">
                      <div class="image-tabs">
                        <img class="border-radius-5" src="images/page/video-1.jpg" alt="" />
										</div>
                    </div>
                    <!-- /.one-half -->
                    <div class="one-half">
                      <div class="text-tabs">
                        <h5>We are the leader in web development</h5>
                        <div class="text-content">
                          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
                          <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderi.</p>
                        </div>
                      </div>
                      <!-- /.text-tabs -->
                    </div>
                    <!-- /.one-half -->
                  </div>
                  <!-- /.content-inner -->
                </div>
                <!-- /.content-tab -->
              </div>
              <!-- /.tab-about style1 -->
            </div>
            <!-- /.col-md-12 -->
          </div>
          <!-- /.row -->
        </div>
        <!-- /.container -->
      </section>
      <!-- /.flat-tabs -->

      
      <!--<section class="flat-imagebox style4">
        <div class="container">
          <div class="row">
            <div class="col-md-12">
              <div class="flat-title">
                <h2>Latest News</h2>
              </div>
            </div>
          </div>
          --><!-- /.row --><!--
          <div class="row">
            <div class="col-md-4">
              <div class="imagebox style2 v4 border">
                <div class="imagebox-image">
                  <img src="ophcontent/themes/themesix/images/page/box-7.jpg" alt="" />
							</div>
                <div class="imagebox-content">
                  <h6>
                    <a href="#" title="">We Create Experiences</a>
                  </h6>
                  <p>Don't be distracted by criticism. Remember the only taste of success some people.</p>
                  <div class="more-link">
                    <a href="#" title="">READ MORE</a>
                  </div>
                </div>
              </div>
              --><!-- /.imagebox style2 --><!--
            </div>
            --><!-- /.col-md-4 --><!--
            <div class="col-md-4">
              <div class="imagebox style2 v4 border">
                <div class="imagebox-image">
                  <img src="ophcontent/themes/themesix/images/page/box-6.jpg" alt="" />
							</div>
                <div class="imagebox-content">
                  <h6>
                    <a href="#" title="">Simple, Fast And Fun</a>
                  </h6>
                  <p>Don't be distracted by criticism. Remember the only taste of success some people.</p>
                  <div class="more-link">
                    <a href="#" title="">READ MORE</a>
                  </div>
                </div>
              </div>
              --><!-- /.imagebox style2 --><!--
            </div>
            --><!-- /.col-md-4 --><!--
            <div class="col-md-4">
              <div class="imagebox style2 v4 border">
                <div class="imagebox-image">
                  <img src="ophcontent/themes/themesix/images/page/box-8.jpg" alt="" />
							</div>
                <div class="imagebox-content">
                  <h6>
                    <a href="#" title="">Device Friendly</a>
                  </h6>
                  <p>Don't be distracted by criticism. Remember the only taste of success some people.</p>
                  <div class="more-link">
                    <a href="#" title="">READ MORE</a>
                  </div>
                </div>
              </div>
              --><!-- /.imagebox style2 --><!--
            </div>
            --><!-- /.col-md-4 --><!--
          </div>
          --><!-- /.row --><!--
        </div>
        --><!-- /.container --><!--
      </section>-->
      <!-- /.flat-imagebox -->
      
      <section class="flat-imagebox style4" id="latestnews">
        <script>
          LoadNewPart('home_news', 'latestnews', 'bloghome', '', '')
        </script> 
      </section>
      <!-- /.flat-imagebox -->
      

      <!-- /.footer -->

      <section class="footer-bottom">
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
              <p class="copyright" style="font-family:poppins">
                Copyright ©2018 <a href="#" title="">OPERAHOUSE</a>. All Rights Reserved
              </p>
            </div>
          </div>
        </div>
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

  <xsl:template match="sqroot/header/menus/menu[@code='primaryfront']/submenus/submenu">
    <xsl:choose>
      <xsl:when test="(@type)='treeroot'">
        <li class="has-submenu">
          <a href="#" title="">
            <xsl:value-of select="caption/." />
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


  <xsl:template match="sqroot/header/menus/menu[@code='specialfront']/submenus/submenu">
    <li class="{@type}">
      <a href="{pageURL/.}" title="">
        <xsl:value-of select="caption/." />
      </a>
    </li>
  </xsl:template>

  <xsl:template match="submenus/submenu[@type='treeview']">
    <li>
      <a href="{pageURL/.}" title="">
        <xsl:value-of select="caption/." />
      </a>
    </li>
  </xsl:template>
</xsl:stylesheet>