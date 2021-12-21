<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl" >

  <xsl:template match="/">
    <script>
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

      $('.tp-caption').data('frames', [{"delay":0,"split":"chars","splitdelay":0.05,"speed":500,"frame":"0","from":"x:[105%];z:0;rX:45deg;rY:0deg;rZ:90deg;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","to":"o:1;","ease":"Power4.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]);
      
    </script>
    <xsl:apply-templates select="sqroot" />




  </xsl:template>

  <xsl:template match="/sqroot/header">
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
                <img src="ophcontent/themes/themesix/images/parallax/headerbg.jpg"  alt=""  data-bgposition="center center" data-kenburns="off" data-duration="30000" data-ease="Linear.easeNone" data-scalestart="100" data-scaleend="120" data-rotatestart="0" data-rotateend="0" data-offsetstart="0 0" data-offsetend="0 0" data-bgparallax="10" class="rev-slidebg" data-no-retina="" />

                <!-- LAYERS -->

                <!-- LAYER NR. 12 -->
                <div class="tp-caption sub-title color-black ff-2 themehome"
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

	                            style="z-index: 16; white-space: normal;font-weight: 300;color: black; font-size:60px !important;">
                  BERJALAN BERSAMA KE DEPAN
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
                  <!-- Simplification and better control in vendor invoice process by remove invoice submission through mail, to reduce miss-process and human error. -->
                  <!-- Easy Integration, File Sharing between vendor and internally, Private and Secure. -->
                </div>

                <!-- <div class="center"> -->
                  <!-- <a href="?code=ToINCS" target="_self" class="tp-caption flat-button-slider bg-blue color-white" -->
                         
                    <!-- data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" -->
                    <!-- data-y="['middle','middle','middle','middle']" data-voffset="['119','119','119','119']" -->
                    <!-- data-fontsize="['12','12','12','12']" -->
                    <!-- data-lineheight="['46','46','46','44']" -->
                    <!-- data-fontweight="['600','600','600','600']" -->
                    <!-- data-textAlign="['center', 'center', 'center', 'center']" -->
                    <!-- data-width="210" -->
                    <!-- data-height="46"> -->
                    <!-- SUBMIT NOW -->
                  <!-- </a> -->
                  <!-- END LAYER LINK -->
                <!-- </div> -->
              </li>
              <li data-index="rs-3049" data-transition="slideremovedown" data-slotamount="7" data-hideafterloop="0" data-hideslideonmobile="off"  data-easein="Power3.easeInOut" data-easeout="Power3.easeInOut" data-masterspeed="2000"    data-rotate="0"  data-saveperformance="off"  data-title="Ken Burns" data-param1="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-param10="" data-description="">

                <!-- MAIN IMAGE -->
                <img src="ophcontent/themes/themesix/images/banner2.jpg"  alt=""  data-bgposition="center center" data-kenburns="off" data-duration="30000" data-ease="Linear.easeNone" data-scalestart="100" data-scaleend="120" data-rotatestart="0" data-rotateend="0" data-offsetstart="0 0" data-offsetend="0 0" data-bgparallax="10" class="rev-slidebg" data-no-retina="" />

              </li>
            </ul>
          </div>



        </div>
      </section>  
  </xsl:template>
  <xsl:template match="/sqroot/body">

    <section class="flat-iconbox style8">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="flat-title">
              <h2>Permohonan Pelayanan Gereja</h2>
            </div>            
          </div>
          <!-- /.col-md-12 -->
        </div>
        <div class="row">
        <xsl:for-each select="/sqroot/header/menus/menu[@code='primaryfront']/submenus/submenu[@idMenu='treeroot3Peng']/submenus/submenu">
          <div class="col-lg-3">
            <div class="iconbox center style1 v5 border-radius-5" style="height:250px;margin-top:30px">
              <div class="box-header">
                <div class="icon">
                  <svg version="1.1" xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="70px" height="70px" viewBox="0 0 80 80" xml:space="preserve" fill="transparent">
                                      <circle class="circle is-inner" cx="40" cy="40" r="36"></circle>
                                      <circle class="circle is-outer" cx="40" cy="40" r="36"></circle>
                                  </svg>
                  <span class="ti-file font-size-30"></span>
                </div>
                <div class="box-title">
                  <a href="{pageURL}" title=""><xsl:value-of select="caption" /></a>
                </div>
              </div>
              <!-- /.box-header -->
              <div class="box-content">
                <p><xsl:value-of select="MenuDescription" /></p>
              </div>
              <!-- /.box-content -->
            </div>
            <!-- /.iconbox style1 -->
          </div>
        </xsl:for-each>
      </div>

      </div>
        <!-- /.row -->
      <!-- /.container-fluid -->
    </section>

    <section class="flat-iconbox style8">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="flat-title">
              <h2>Proses Pelayanan Pelayanan Gereja</h2>
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
                  <a href="#" title="">Pengajuan</a>
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
                  <a href="#" title="">Proses Persetujuan</a>
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
                  <a href="#" title="">Follow up</a>
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
              <h2>Bagaimana mengajukan Permohonan Pelayanan Gereja</h2>
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
                      <h6>Kelengkapan Dokumen Pendukung</h6>
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
                      <h6>Informasi Akurat dan Benar</h6>
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
                      <h6>Format File</h6>
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
                      <h6>Lainnya</h6>
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
    
    <!-- <section class="flat-imagebox style4" id="latestnews"> -->
      <!-- <script> -->
        <!-- LoadNewPart('home_news', 'latestnews', 'bloghome', '', '') -->
      <!-- </script>  -->
    <!-- </section> -->
    <!-- /.flat-imagebox -->
  </xsl:template>

  <xsl:include href="_base.xslt" />
</xsl:stylesheet>