
  <?php if ($addresses) { ?>


  <?php } ?>

<div class="row">
    <div class="col-md-6 col-sm-12 required">
    	<label class="control-label" for="input-payment-firstname"><?php echo $entry_firstname; ?></label>
        <div class="">
        	<input type="text" name="firstname" value="" placeholder="<?php echo $entry_firstname; ?>" id="input-payment-firstname" class="form-control" />
        </div>
    </div>
    <div class="col-md-6 col-sm-12 required">
        <label class="control-label" for="input-payment-lastname"><?php echo $entry_lastname; ?></label>
        <div class="">
        	<input type="text" name="lastname" value="" placeholder="<?php echo $entry_lastname; ?>" id="input-payment-lastname" class="form-control" />
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-6 col-sm-12 required">
    	<label class="control-label" for="input-email"><?php echo $entry_email; ?></label>
        <div class="">
        	<input type="text" name="email" value="" placeholder="<?php echo $entry_email; ?>" id="input-email" class="form-control" />
        </div>
    </div>
    <div class="col-md-6 col-sm-12 required">
        <label class="control-label" for="input-telephone"><?php echo $entry_telephone; ?></label>
        <div class="">
        	<input type="text" name="telephone" value="" placeholder="<?php echo $entry_telephone; ?>" id="input-telephone" class="form-control" />
        </div>
    </div>
</div>
<div class="row required">
    <div class="col-sm-12 required">
    	<label class="control-label" for="input-payment-address-1"><?php echo $entry_address_1; ?></label>
        <div class="">
        	<input type="text" name="address_1" value="" placeholder="<?php echo $entry_address_1; ?>" id="input-payment-address-1" class="form-control" />
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-6 col-sm-12 required">
    	<label class="control-label" for="input-payment-city"><?php echo $entry_city; ?></label>
        <div class="">
        	<input type="text" name="city" value="" placeholder="<?php echo $entry_city; ?>" id="input-payment-city" class="form-control" />
        </div>
    </div>
    <div class="col-md-6 col-sm-12 required">
    	<label class="control-label" for="input-payment-postcode"><?php echo $entry_postcode; ?></label>
        <div class="">
        	<input type="text" name="postcode" value="" placeholder="<?php echo $entry_postcode; ?>" id="input-payment-postcode" class="form-control" />
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-6 col-sm-12 required">
    	<label class="control-label" for="input-payment-country"><?php echo $entry_country; ?></label>
        <div class="">
            <select name="country_id" id="input-payment-country" class="form-control">
              <option value=""><?php echo $text_select; ?></option>
              <?php foreach ($countries as $country) { ?>
              <?php if ($country['country_id'] == $country_id) { ?>
              <option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
              <?php } else { ?>
              <option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
              <?php } ?>
              <?php } ?>
            </select>
        </div>
    </div>
    <div class="col-md-6 col-sm-12 required">
    	<label class="control-label" for="input-payment-zone"><?php echo $entry_zone; ?></label>
        <div class="">
            <select name="zone_id" id="input-payment-zone" class="form-control">
            </select>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-sm-12">
        <div class="checkbox">
        	<label><input type="checkbox" checked> Ship to the same address</label>
        </div>
    </div>
</div>




<script type="text/javascript"><!--
$('#collapse-payment-address select[name=\'country_id\']').on('change', function() {
	$.ajax({
		url: 'index.php?route=checkout/checkout/country&country_id=' + this.value,
		dataType: 'json',
		success: function(json) {
			if (json['postcode_required'] == '1') {
				$('#collapse-payment-address input[name=\'postcode\']').parent().parent().addClass('required');
			} else {
				$('#collapse-payment-address input[name=\'postcode\']').parent().parent().removeClass('required');
			}

			html = '<option value=""><?php echo $text_select; ?></option>';

			if (json['zone'] && json['zone'] != '') {
				for (i = 0; i < json['zone'].length; i++) {
					html += '<option value="' + json['zone'][i]['zone_id'] + '"';

					if (json['zone'][i]['zone_id'] == '<?php echo $zone_id; ?>') {
						html += ' selected="selected"';
					}

					html += '>' + json['zone'][i]['name'] + '</option>';
				}
			} else {
				html += '<option value="0" selected="selected"><?php echo $text_none; ?></option>';
			}

			$('#collapse-payment-address select[name=\'zone_id\']').html(html);
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
});

$('#collapse-payment-address select[name=\'country_id\']').trigger('change');
//--></script>
