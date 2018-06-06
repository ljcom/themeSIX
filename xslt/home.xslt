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
            <a href="index.html" title="Yolo">
              L'OREAL
            </a>
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
              <ul class="menu flat-unstyled" style="margin-right:0;">
                <xsl:apply-templates select="sqroot/header/menus/menu[@code='primaryfront']/submenus/submenu" />
                
                <li class="login" style="margin-left:20px;">
                  <a href="#" title="">
                    Account <i class="fa fa-angle-down" aria-hidden="true"></i>
                  </a>
                  <ul class="unstyled border-radius-5 box-shadow">
                    <li>
                      <a href="#" title="">Profile</a>
                    </li>
                    <li>
                      <a href="javascript:signOut()" title="">Log Out</a>
                    </li>
                  </ul>
                </li>
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

	                            style="z-index: 16; white-space: normal;font-weight: 300;">
                  Invoice Portal
                </div>
                <script>
                  $('.tp-caption').data('frames', [{"delay":0,"split":"chars","splitdelay":0.05,"speed":500,"frame":"0","from":"x:[105%];z:0;rX:45deg;rY:0deg;rZ:90deg;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","to":"o:1;","ease":"Power4.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]);
                </script>

                <div class="tp-caption color-black ff-2"
	                            data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
	                            data-y="['middle','middle','middle','middle']" data-voffset="['15','15','15','15']"
	                            data-fontsize="['16','16','14','14']"
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

	                            style="z-index: 16; white-space: nowrap;font-weight: 300;">
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
      </section>-->
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
                    <span class="ti-settings font-size-30"></span>
                  </div>
                  <div class="box-title">
                    <a href="#" title="">Customizability</a>
                  </div>
                </div>
                <!-- /.box-header -->
                <div class="box-content">
                  <p>Don't be distracted by criticism. Remember the only taste of success some people</p>
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
                    <span class="ti-ruler-pencil font-size-30"></span>
                  </div>
                  <div class="box-title">
                    <a href="#" title="">Perfect Design</a>
                  </div>
                </div>
                <!-- /.box-header -->
                <div class="box-content">
                  <p>Don't be distracted by criticism. Remember the only taste of success some people.</p>
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
                    <span class="ti-dashboard font-size-30"></span>
                  </div>
                  <div class="box-title">
                    <a href="#" title="">Code Quality</a>
                  </div>
                </div>
                <!-- /.box-header -->
                <div class="box-content">
                  <p>Don't be distracted by criticism. Remember the only taste of success some people.</p>
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

      <section class="flat-testimonial">
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
                  <!-- /blockquote -->
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
                  <!-- /blockquote -->
                </div>
                <!-- /.testimonial-item -->
              </div>
              <!-- /.testimonial owl-carousel-1 -->
            </div>
            <!-- /.col-md-12 -->
          </div>
          <!-- /.row -->
        </div>
        <!-- /.container -->
      </section>
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
                  <li class="active tab-item active">
                    <div class="box-header background no-border">
                      <div class="icon">
                        <span class="ti-ruler-pencil"></span>
                      </div>
                      <div class="box-title">
                        <h6>Perfect Design</h6>
                      </div>
                    </div>
                  </li>
                  <!-- /.tab-item -->
                  <li class="tab-item">
                    <div class="box-header background no-border">
                      <div class="icon">
                        <span class="ti-dashboard"></span>
                      </div>
                      <div class="box-title">
                        <h6>Code Quality</h6>
                      </div>
                    </div>
                  </li>
                  <!-- /.tab-item -->
                  <li class="tab-item">
                    <div class="box-header background no-border">
                      <div class="icon">
                        <span class="ti-settings"></span>
                      </div>
                      <div class="box-title">
                        <h6>Customizability</h6>
                      </div>
                    </div>
                  </li>
                  <!-- /.tab-item -->
                  <li class="tab-item">
                    <div class="box-header background no-border">
                      <div class="icon">
                        <span class="ti-headphone-alt"></span>
                      </div>
                      <div class="box-title">
                        <h6>Free Support</h6>
                      </div>
                    </div>
                  </li>
                  <!-- /.tab-item -->
                  <li class="tab-item">
                    <div class="box-header background no-border">
                      <div class="icon">
                        <span class="ti-alarm-clock"></span>
                      </div>
                      <div class="box-title">
                        <h6>Save Time</h6>
                      </div>
                    </div>
                  </li>
                  <!-- /.tab-item -->
                </ul>
                <!-- /.tab-list-about -->
                <div class="content-tab">
                  <div class="content-inner overflow">
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
                    <div class="one-half">
                      <ul class="padding-left-100">
                        <li>
                          <i class="fa fa-check color-default" aria-hidden="true"></i>Fully responsive so content looks great
                        </li>
                        <li>
                          <i class="fa fa-check color-default" aria-hidden="true"></i>Awesome sliders to showcase content
                        </li>
                        <li>
                          <i class="fa fa-check color-default" aria-hidden="true"></i>Advanced theme options panel
                        </li>
                        <li>
                          <i class="fa fa-check color-default" aria-hidden="true"></i>Amazing shortcodes loaded with options
                        </li>
                        <li>
                          <i class="fa fa-check color-default" aria-hidden="true"></i>Easy to use Fusion Builder to create pages
                        </li>
                      </ul>
                      <!-- /.ul -->
                    </div>
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
                  <div class="content-inner overflow">
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
                    <div class="one-half">
                      <ul class="padding-left-100">
                        <li>
                          <i class="fa fa-check color-default" aria-hidden="true"></i>Fully responsive so content looks great
                        </li>
                        <li>
                          <i class="fa fa-check color-default" aria-hidden="true"></i>Awesome sliders to showcase content
                        </li>
                        <li>
                          <i class="fa fa-check color-default" aria-hidden="true"></i>Advanced theme options panel
                        </li>
                        <li>
                          <i class="fa fa-check color-default" aria-hidden="true"></i>Amazing shortcodes loaded with options
                        </li>
                        <li>
                          <i class="fa fa-check color-default" aria-hidden="true"></i>Easy to use Fusion Builder to create pages
                        </li>
                      </ul>
                      <!-- /.ul -->
                    </div>
                    <!-- /.one-half -->
                  </div>
                  <!-- /.content-inner -->
                  <div class="content-inner overflow">
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
                    <div class="one-half">
                      <ul class="padding-left-100">
                        <li>
                          <i class="fa fa-check color-default" aria-hidden="true"></i>Fully responsive so content looks great
                        </li>
                        <li>
                          <i class="fa fa-check color-default" aria-hidden="true"></i>Awesome sliders to showcase content
                        </li>
                        <li>
                          <i class="fa fa-check color-default" aria-hidden="true"></i>Advanced theme options panel
                        </li>
                        <li>
                          <i class="fa fa-check color-default" aria-hidden="true"></i>Amazing shortcodes loaded with options
                        </li>
                        <li>
                          <i class="fa fa-check color-default" aria-hidden="true"></i>Easy to use Fusion Builder to create pages
                        </li>
                      </ul>
                      <!-- /.ul -->
                    </div>
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

      <section class="flat-call-back style2 bg-image">
        <div class="container">
          <div class="row">
            <div class="col-md-12">
              <div class="flat-title">
                <h3 class="font-weight-3">Contact Us</h3>
                <p class="sub-title">Tell me about your problem and your feedback.</p>
              </div>
              <!-- /.flat-title -->
              <div class="form-call-back style2">
                <form id="subscribe-form" action="#" method="post" accept-charset="utf-8" data-mailchimp="true">
                  <div id="subscribe-content">
                    <div class="field-one-third">
                      <div class="field-name">
                        <input id="subscribe-email" type="text" name="email" placeholder="Email" />
										</div>
                    </div>
                    <!-- /.field-one-third -->
                    <div class="field-one-third">
                      <div class="field-email">
                        <input id="subscribe-email" type="text" name="email" placeholder="Email Address" />
										</div>
                    </div>
                    <!-- /.field-one-third -->
                    <div class="field-one-third">
                      <div class="field-phone">
                        <input id="subscribe-phone" type="text" name="phone" placeholder="Phone Number" />
										</div>
                    </div>
                    <!-- /.field-one-third -->
                    <div class="btn-submit">
                      <button id="subscribe-button" type="button" class="base box-shadow">SUBSCRIBE</button>
                    </div>
                  </div>
                  <div id="subscribe-msg">

                  </div>
                </form>
              </div>
              <!-- /.form-call-back style2 -->
            </div>
            <!-- /.col-md-12 -->
          </div>
          <!-- /.row -->
        </div>
        <!-- /.contianer -->
      </section>
      <!-- /.flat-call-back -->

      <section class="flat-imagebox style4">
        <div class="container">
          <div class="row">
            <div class="col-md-12">
              <div class="flat-title">
                <h2>Latest News</h2>
              </div>
            </div>
          </div>
          <!-- /.row -->
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
              <!-- /.imagebox style2 -->
            </div>
            <!-- /.col-md-4 -->
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
              <!-- /.imagebox style2 -->
            </div>
            <!-- /.col-md-4 -->
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
              <!-- /.imagebox style2 -->
            </div>
            <!-- /.col-md-4 -->
          </div>
          <!-- /.row -->
        </div>
        <!-- /.container -->
      </section>
      <!-- /.flat-imagebox -->
      
      <footer>
        <div class="container">
          <div class="row">
            <div class="col-md-3">
              <div class="widget-ft widget-contact">
                <h3 class="title">CONTACT US</h3>
                <ul class="flat-contact">
                  <li class="contact">
                    <p class="phone">1 (800) 686-6688</p>
                    <p class="email">info.deercreative@gmail.com</p>
                  </li>
                  <li class="address">
                    <p>
                      40 Baria Sreet 133/2 <br/>NewYork City, US
                    </p>
                  </li>
                  <li class="open-hours">
                    <p>Open hours: 8.00-18.00 Mon-Fri</p>
                  </li>
                </ul>
              </div>
              <!-- /.widget-ft widget-contact -->
            </div>
            <!-- /.col-md-3 -->
            <div class="col-md-3">
              <div class="widget-ft widget-link-cat">
                <h3 class="title">LINK CATEGORIES</h3>
                <ul class="one-half">
                  <li>
                    <a href="#" title="">Agency</a>
                  </li>
                  <li>
                    <a href="#" title="">Studio</a>
                  </li>
                  <li>
                    <a href="#" title="">Studio</a>
                  </li>
                  <li>
                    <a href="#" title="">Blogs</a>
                  </li>
                  <li>
                    <a href="#" title="">Shop</a>
                  </li>
                </ul>
                <!-- /.one-half -->
                <ul class="one-half">
                  <li>
                    <a href="#" title="">Home</a>
                  </li>
                  <li>
                    <a href="#" title="">About</a>
                  </li>
                  <li>
                    <a href="#" title="">Services</a>
                  </li>
                  <li>
                    <a href="#" title="">Work</a>
                  </li>
                  <li>
                    <a href="#" title="">Privacy </a>
                  </li>
                </ul>
                <!-- /.one-half -->
              </div>
              <!-- /.widget-ft widget-link-cat -->
            </div>
            <!-- /.col-md-3 -->
            <div class="col-md-3">
              <div class="widget-ft widget-lastest-news">
                <h3 class="title">LATEST NEWS</h3>
                <ul class="flat-lastest-news">
                  <li>
                    <a href="#" title="">Device Frienly</a>
                    <p>
                      <span>December 22, 2017</span>
                      <span>
                        <i class="fa fa-comments-o" aria-hidden="true"></i>10
                      </span>
                    </p>
                  </li>
                  <li>
                    <a href="#" title="">Simple, Fast and Fun</a>
                    <p>
                      <span>December 22, 2017</span>
                      <span>
                        <i class="fa fa-comments-o" aria-hidden="true"></i>10
                      </span>
                    </p>
                  </li>
                  <li>
                    <a href="#" title="">We creative Experiences</a>
                    <p>
                      <span>December 22, 2017</span>
                      <span>
                        <i class="fa fa-comments-o" aria-hidden="true"></i>10
                      </span>
                    </p>
                  </li>
                </ul>
                <!-- /.flat-lastest-news -->
              </div>
              <!-- /.widget-ft widget-contact -->
            </div>
            <!-- /.col-md-3 -->
            <div class="col-md-3">
              <div class="widget-ft widget-twitter-feed">
                <h3 class="title">TWITTER FEED</h3>
                <p>
                  <i class="fa fa-twitter" aria-hidden="true"></i> Check out 'Yolo - Creative Multi-Purpose WordPress Theme' on #EnvatoMarket by @Leonard_Design
                </p>
                <p>#https://themeforest.net/user/leonard_design/portfolio</p>
                <span>About 9 months ago</span>
              </div>
            </div>
            <!-- /.col-md-3 -->
          </div>
          <!-- /.row -->
        </div>
        <!-- /.container -->
      </footer>
      <!-- /.footer -->

      <section class="footer-bottom">
        <div class="container">
          <div class="row">
            <div class="col-md-12">
              <ul class="social-ft">
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
              </ul>
              <p class="copyright">
                Copyright ©2017 <a href="#" title="">DeerCreative</a>. All Rights Reserved
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
        <li class="login">
          <a href="#" title="">
            <xsl:value-of select="caption/." /><i class="fa fa-angle-down" aria-hidden="true"></i>
          </a>
          <ul class="unstyled border-radius-5 box-shadow">
            <xsl:apply-templates select="submenus/submenu[@type='treeview']" />
          </ul>
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