<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Anikit</title>
    <%@include file="components/fonts.jsp"%>
    <%@include file="components/stylesheets.jsp"%>
  </head>

  <body class="<%=MainSite.getInstance().getSite_theme().getClass().getSimpleName().equalsIgnoreCase("LightTheme") ? "bg-light" : "bg-dark"%>">

  <%@include file="components/navbar.jsp"%>

  <div class="<%=MainSite.getInstance().getSite_theme().getClass().getSimpleName().equalsIgnoreCase("LightTheme") ? "main-banner" : "dark-banner"%> wow fadeIn" id="top" data-wow-duration="1s" data-wow-delay="0.5s">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="row">
            <div class="col-lg-6 align-self-center">
              <div class="left-content show-up header-text wow fadeInLeft" data-wow-duration="1s" data-wow-delay="1s">
                <div class="row">
                  <div class="col-lg-12">
                    <h6 class="<%=MainSite.getInstance().getSite_theme().getClass().getSimpleName().equalsIgnoreCase("LightTheme") ? "" : "text-primary"%>">ANIKIT</h6>
                    <h2 class="<%=MainSite.getInstance().getSite_theme().getClass().getSimpleName().equalsIgnoreCase("LightTheme") ? "" : "text-light"%>">Watch anime with maximum comfort</h2>
                    <p>Our site will help you choose anime according to your preferences.</p>
                  </div>
                  <div class="col-lg-12">
                    <div class="border-first-button scroll-to-section">
                      <a href="#contact">Start watching</a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-6">
              <div class="right-image wow fadeInRight" data-wow-duration="1s" data-wow-delay="0.5s">
                <img src="assets/images/slider-dec-v3.png" alt="">
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div id="about" class="about section">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="row">
            <div class="col-lg-6">
              <div class="about-left-image  wow fadeInLeft" data-wow-duration="1s" data-wow-delay="0.5s">
                <img src="assets/images/about-dec-v3.png" alt="">
              </div>
            </div>
            <div class="col-lg-6 align-self-center  wow fadeInRight" data-wow-duration="1s" data-wow-delay="0.5s">
              <div class="about-right-content">
                <div class="section-heading">
                  <h6>About Us</h6>
                  <h4>Who is Ani <em>Kit</em></h4>
                  <div class="line-dec"></div>
                </div>
                <p>Nowadays, in addition to movies and TV shows, anime has a good popularity. But people sometimes can't find something worth their time. To do this, we decided to implement our project. Anikit - a site that is designed to select a good anime to watch. The main goal is to provide a comfortable viewing of your favorite media. The site is a tool that will store all the important information about the anime in which the person is interested. Rating, trailer, reviews, description, reviews of those who have looked, as well as the ability to view with your favorite voice acting, good quality and a choice of a player convenient for people. All this in sparing not only functionality, but also a pleasant and user-friendly design.</p>
                <div class="row">
                  <div class="col-lg-4 col-sm-4">
                    <div class="skill-item first-skill-item wow fadeIn" data-wow-duration="1s" data-wow-delay="0s">
                      <div class="progress" data-percentage="90">
                        <span class="progress-left">
                          <span class="progress-bar"></span>
                        </span>
                        <span class="progress-right">
                          <span class="progress-bar"></span>
                        </span>
                        <div class="progress-value">
                          <div>
                            99%<br>
                            <span>Free</span>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-lg-4 col-sm-4">
                    <div class="skill-item second-skill-item wow fadeIn" data-wow-duration="1s" data-wow-delay="0s">
                      <div class="progress" data-percentage="90">
                        <span class="progress-left">
                          <span class="progress-bar"></span>
                        </span>
                        <span class="progress-right">
                          <span class="progress-bar"></span>
                        </span>
                        <div class="progress-value">
                          <div>
                            99%<br>
                            <span>comfortable</span>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-lg-4 col-sm-4">
                    <div class="skill-item third-skill-item wow fadeIn" data-wow-duration="1s" data-wow-delay="0s">
                      <div class="progress" data-percentage="90">
                        <span class="progress-left">
                          <span class="progress-bar"></span>
                        </span>
                        <span class="progress-right">
                          <span class="progress-bar"></span>
                        </span>
                        <div class="progress-value">
                          <div>
                            99%<br>
                            <span>Cool</span>
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
      </div>
    </div>
  </div>


  
  <div id="free-quote" class="free-quote">
    <div class="container">
      <div class="row">
        <div class="col-lg-4 offset-lg-4">
          <div class="section-heading  wow fadeIn" data-wow-duration="1s" data-wow-delay="0.3s">
            <h6>Subscribe </h6>
            <h4>to notifications</h4>
            <div class="line-dec"></div>
          </div>
        </div>
        <div class="col-lg-8 offset-lg-2  wow fadeIn" data-wow-duration="1s" data-wow-delay="0.8s">
          <form id="search" action="#" method="GET">
            <div class="row">
              <div class="col-lg-4 col-sm-4">
                <fieldset>
                  <input type="web" name="web" class="website" placeholder="Name..." autocomplete="on" required>
                </fieldset>
              </div>
              <div class="col-lg-4 col-sm-4">
                <fieldset>
                  <input type="address" name="address" class="email" placeholder="Email Address..." autocomplete="on" required>
                </fieldset>
              </div>
              <div class="col-lg-4 col-sm-4">
                <fieldset>
                  <button type="submit" class="main-button">Subscribe</button>
                </fieldset>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>


  <div id="portfolio" class="our-portfolio section">
    <div class="container">
      <div class="row">
        <div class="col-lg-5">
          <div class="section-heading wow fadeInLeft" data-wow-duration="1s" data-wow-delay="0.3s">
            <h6>Best anime's</h6>
            <h4>Anikit <em>suggests</em></h4>
            <div class="line-dec"></div>
          </div>
        </div>
      </div>
    </div>
    <div class="container-fluid wow fadeIn" data-wow-duration="1s" data-wow-delay="0.7s">
      <div class="row">
        <div class="col-lg-12">
          <div class="loop owl-carousel">
            <div class="item">
              <a href="#">
                <div class="portfolio-item">
                <div class="thumb">
                  <img src="static/images/portfolio-01.jpg" alt="">
                </div>
                <div class="down-content">
                  <h4>Chainsaw Man</h4>
                  <span>(2022)</span>
                </div>
              </div>
              </a>  
            </div>
            <div class="item">
              <a href="#">
                <div class="portfolio-item">
                <div class="thumb">
                  <img src="static/images/portfolio-01.jpg" alt="">
                </div>
                <div class="down-content">
                  <h4>Chainsaw Man</h4>
                  <span>(2022)</span>
                </div>
              </div>
              </a>  
            </div>
            <div class="item">
              <a href="#">
                <div class="portfolio-item">
                <div class="thumb">
                  <img src="static/images/portfolio-02.jpg" alt="">
                </div>
                <div class="down-content">
                  <h4>Blue Lock</h4>
                  <span>(2022)</span>
                </div>
              </div>
              </a>  
            </div>
            <div class="item">
              <a href="#">
                <div class="portfolio-item">
                <div class="thumb">
                  <img src="static/images/portfolio-03.jpg" alt="">
                </div>
                <div class="down-content">
                  <h4>Bleach</h4>
                  <span>(2022)</span>
                </div>
              </div>
              </a>  
            </div>
            <div class="item">
              <a href="#">
                <div class="portfolio-item">
                <div class="thumb">
                  <img src="static/images/portfolio-04.jpg" alt="">
                </div>
                <div class="down-content">
                  <h4>Jujustsu Kaisen 2</h4>
                  <span>(2022)</span>
                </div>
              </div>
              </a>  
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  
  <div id="blog" class="blog">
    <div class="container">
      <div class="row">
        <div class="col-lg-4 offset-lg-4  wow fadeInDown" data-wow-duration="1s" data-wow-delay="0.3s">
          <div class="section-heading">
            <h6>Recent News</h6>
            <h4>Check Our News <em>Posts</em></h4>
            <div class="line-dec"></div>
          </div>
        </div>
        <div class="col-lg-6 show-up wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.3s">
          <div class="blog-post">
            <div class="thumb">
              <a href="#"><img src="static/images/blog-post-01.jpg" alt=""></a>
            </div>
            <div class="down-content">
              <span class="category">Anime release</span>
              <span class="date">23 October 2022</span>
              <a href="#"><h4>Chainsaw Man</h4></a>
              <p>Chainsaw Man is a Japanese manga series written and illustrated by Tatsuki Fujimoto.</p>
              <span class="author"><img src="static/images/1author-post.jpg" alt="">ANIKIT</span>
              <div class="border-first-button"><a href="#">Watch anime</a></div>
            </div>
          </div>
        </div>
        <div class="col-lg-6 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.3s">
          <div class="blog-posts">
            <div class="row">
              <div class="col-lg-12">
                <div class="post-item">
                  <div class="thumb">
                    <a href="#"><img src="assets/images/blog-post-02.jpg" alt=""></a>
                  </div>
                  <div class="right-content">
                    <span class="category">Anime release</span>
                    <span class="date">23 October 2022</span>
                    <a href="#"><h4>Jujustsu Kaisen</h4></a>
                    <p>Jujutsu Kaisen is a Japanese manga series written and illustrated by Gege Akutami. </p>
                  </div>
                </div>
              </div>
              <div class="col-lg-12">
                <div class="post-item">
                  <div class="thumb">
                    <a href="#"><img src="assets/images/blog-post-03.jpg" alt=""></a>
                  </div>
                  <div class="right-content">
                    <span class="category">Anime release</span>
                    <span class="date">23 October 2022</span>
                    <a href="#"><h4>Blue Lock</h4></a>
                    <p>Blue Lock is a Japanese manga series written by Muneyuki Kaneshiro and illustrated by Yusuke Nomura.</p>
                  </div>
                </div>
              </div>
              <div class="col-lg-12">
                <div class="post-item last-post-item">
                  <div class="thumb">
                    <a href="#"><img src="assets/images/blog-post-04.jpg" alt=""></a>
                  </div>
                  <div class="right-content">
                    <span class="category">Anime release</span>
                    <span class="date">23 October 2022</span>
                    <a href="#"><h4>Bleach</h4></a>
                    <p>Bleach (stylized as BLEACH) is a Japanese anime television series based on Tite Kubo's original manga series of the same name.</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>  

  <div id="contact" class="contact-us section">
    <div class="container">
      <div class="row">
        <div class="col-lg-6 offset-lg-3">
          <div class="section-heading wow fadeIn" data-wow-duration="1s" data-wow-delay="0.5s">
            <h6>Contact Us</h6>
            <h4>Get In Touch With Us <em>Now</em></h4>
            <div class="line-dec"></div>
          </div>
        </div>
        <div class="col-lg-12 wow fadeInUp" data-wow-duration="0.5s" data-wow-delay="0.25s">
          <form id="contact" action="" method="post">
            <div class="row">
              <div class="col-lg-12">
                <div class="contact-dec">
                  <img src="assets/images/contact-dec-v3.png" alt="">
                </div>
              </div>
              <div class="col-lg-5">
                <div id="map">
                  <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d160182.53790895638!2d71.33930827300355!3d51.14807742204735!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x424580c47db54609%3A0x97f9148dddb19228!2sAstana%20020000!5e0!3m2!1sen!2skz!4v1666803515979!5m2!1sen!2skz"=UTF8&iwloc=&output=embed" width="100%" height="636px" frameborder="0" style="border:0" allowfullscreen></iframe>
                </div>
              </div>
              <div class="col-lg-7">
                <div class="fill-form">
                  <div class="row">
                    <div class="col-lg-4">
                      <div class="info-post">
                        <div class="icon">
                          <img src="assets/images/phone-icon.png" alt="">
                          <a href="#">012-345-6789</a>
                        </div>
                      </div>
                    </div>
                    <div class="col-lg-4">
                      <div class="info-post">
                        <div class="icon">
                          <img src="assets/images/email-icon.png" alt="">
                          <a href="#">info@anikit.com</a>
                        </div>
                      </div>
                    </div>
                    <div class="col-lg-4">
                      <div class="info-post">
                        <div class="icon">
                          <img src="assets/images/location-icon.png" alt="">
                          <a href="#">123 Astana</a>
                        </div>
                      </div>
                    </div>
                    <div class="col-lg-6">
                      <fieldset>
                        <input type="name" name="name" id="name" placeholder="Name" autocomplete="on" required>
                      </fieldset>
                      <fieldset>
                        <input type="text" name="email" id="email" pattern="[^ @]*@[^ @]*" placeholder="Your Email" required="">
                      </fieldset>
                      <fieldset>
                        <input type="subject" name="subject" id="subject" placeholder="Subject" autocomplete="on">
                      </fieldset>
                    </div>
                    <div class="col-lg-6">
                      <fieldset>
                        <textarea name="message" type="text" class="form-control" id="message" placeholder="Message" required=""></textarea>  
                      </fieldset>
                    </div>
                    <div class="col-lg-12">
                      <fieldset>
                        <button type="submit" id="form-submit" class="main-button ">Send Message Now</button>
                      </fieldset>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>

  <footer>
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <p>Copyright © 2022 ANIKIT. All Rights Reserved. 
        </div>
      </div>
    </div>
  </footer>


  <%@include file="components/scripts.jsp"%>

</body>
</html>