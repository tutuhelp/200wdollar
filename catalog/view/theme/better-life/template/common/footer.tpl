<footer>
  <div class="container">
    <div class="row">
      <?php if ($informations) { ?>
      <div class="col-sm-6">
        <h5>Subscription</h5>
        <ul class="list-unstyled">
        <li>
            <div class="input-group subscribe">
              <input type="text" class="form-control" placeholder="Please enter your email">
              <span class="input-group-btn">
                <button class="btn btn-subscribe" type="button">Subscribe</button>
              </span>
            </div><!-- /input-group -->
		</li>
        <li class="bl-grey">Register now to get updates on promotions and coupons.</li>
        <li><h5>Stay Connected</h5></li>
        <li>
        <a href="#"><i class="fa fa-facebook-square fa-3x"></i></a>
        <a href="#"><i class="fa fa-twitter-square fa-3x"></i></a>
        <a href="#"><i class="fa fa-google-plus-square fa-3x"></i></a>
        </li>
        </ul>
      </div>
      <?php } ?>
      <div class="col-sm-2">
        <h5><?php echo $text_service; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
          <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
          <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
        </ul>
      </div>
      <div class="col-sm-2">
        <h5><?php echo $text_extra; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
          <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
          <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
          <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
        </ul>
      </div>
      <div class="col-sm-2">
        <h5><?php echo $text_account; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
          <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
          <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
          <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
        </ul>
      </div>
    </div>
    <hr>
    <p>
    <img src="/catalog/view/theme/better-life/image/payment/paypal.png" alt="paypal"> &nbsp;&nbsp; 
    <img src="/catalog/view/theme/better-life/image/payment/visa.png" alt="visa"> &nbsp;&nbsp; 
    <img src="/catalog/view/theme/better-life/image/payment/mastercard.png" alt="mastercard"> &nbsp;&nbsp; 
    <img src="/catalog/view/theme/better-life/image/payment/fedex.png" alt="fedex"> &nbsp;&nbsp; 
    <img src="/catalog/view/theme/better-life/image/payment/dhl.png" alt="dhl"> &nbsp;&nbsp; 
    <img src="/catalog/view/theme/better-life/image/payment/ems.png" alt="ems"> &nbsp;&nbsp; 
    </p>
    <p>&copy; Copyright 2016 Byabetterlife.com</p>
  </div>
</footer>

<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->

<!-- Theme created by Welford Media for OpenCart 2.0 www.welfordmedia.co.uk -->

</body></html>