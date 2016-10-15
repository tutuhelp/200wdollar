<?php echo $header; ?>
<div class="container">

  <?php if ($error_warning) { ?>
  <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <div class="row">
  
    <div id="content" class="col-sm-12">
      <h1><?php echo $heading_title; ?></h1>
      <div class="panel-group" id="accordion">

        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title"><?php echo $text_checkout_payment_address; ?></h4>
          </div>
          <div class="panel-collapse" id="collapse-payment-address">
            <div class="panel-body"><?php echo $payment_address; ?></div>
          </div>
        </div>
        
        
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title"><?php echo $text_checkout_shipping_address; ?></h4>
          </div>
          <div class="panel-collapse collapse" id="collapse-shipping-address">
            <div class="panel-body"></div>
          </div>
        </div>
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title"><?php echo $text_checkout_shipping_method; ?></h4>
          </div>
          <div class="panel-collapse" id="collapse-shipping-method">
            <div class="panel-body"><?php echo $shipping_method; ?></div>
          </div>
        </div>
        
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title"><?php echo $text_checkout_payment_method; ?></h4>
          </div>
          <div class="panel-collapse" id="collapse-payment-method">
            <div class="panel-body"><?php echo $payment_method; ?></div>
          </div>
        </div>
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title"><?php echo $text_checkout_confirm; ?></h4>
          </div>
          <div class="panel-collapse collapse" id="collapse-checkout-confirm">
            <div class="panel-body"><?php echo $confirm_order; ?></div>
          </div>
        </div>
      </div>
</div>
</div></div>
<script type="text/javascript"><!--
$(document).on('change', 'input[name=\'account\']', function() {
	if ($('#collapse-payment-address').parent().find('.panel-heading .panel-title > *').is('a')) {
		if (this.value == 'register') {
			$('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_account; ?> <i class="fa fa-caret-down"></i></a>');
		} else {
			$('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_payment_address; ?> <i class="fa fa-caret-down"></i></a>');
		}
	} else {
		if (this.value == 'register') {
			$('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_account; ?>');
		} else {
			$('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_payment_address; ?>');
		}
	}
});




$(document).on('change', '#collapse-payment-address select', function() {
	var country_id = $("#input-payment-country").val();
	var zone_id = $("#input-payment-zone").val();
	shipMethod(country_id,zone_id);
	
});

//Change Shipping Method
function shipMethod(country_id,zone_id){

	$.ajax({
	    url: 'index.php?route=checkout/shipping_method/reload',
	    data: {country_id:country_id, zone_id:zone_id},
	    dataType: 'html',
	    success: function(html) {
	        $('#collapse-shipping-method .panel-body').html(html);

	    },
	    error: function(xhr, ajaxOptions, thrownError) {
	        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
	    }
	});
}

//Change Payment Method
function paymentMethod(country_id,zone_id){

	$.ajax({
	    url: 'index.php?route=checkout/payment_method/reload',
	    data: {country_id:country_id, zone_id:zone_id},
	    dataType: 'html',
	    success: function(html) {
	        $('#collapse-payment-method .panel-body').html(html);

	    },
	    error: function(xhr, ajaxOptions, thrownError) {
	        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
	    }
	});
}

// Confirm
$(document).on('change', '#confirm-button', function() {

	$.ajax({
	    url: 'index.php?route=checkout/confirm',
	    dataType: 'html',
	    complete: function() {
	        $('#button-payment-method').button('reset');
	    },
	    success: function(html) {
	        $('#collapse-checkout-confirm .panel-body').html(html);

			$('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<a href="#collapse-checkout-confirm" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_confirm; ?> <i class="fa fa-caret-down"></i></a>');

			$('a[href=\'#collapse-checkout-confirm\']').trigger('click');
		},
	    error: function(xhr, ajaxOptions, thrownError) {
	        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
	    }
	});
	
});


//--></script>
<?php echo $footer; ?>
