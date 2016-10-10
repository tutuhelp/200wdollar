
<div class="row">
  <?php foreach ($products as $product) { ?>
  <div class="product-layout col-md-4 col-sm-6 col-xs-12">
    <div class="product-thumb transition">
      <div class="image"><a href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
      <div class="caption">
        <p><a href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>"><?php echo $product['name']; ?></a></p>
        <div class="row">
        <div class="col-xs-6">
        <p class="persons"><i class="fa fa-user-plus fa-lg"></i> &nbsp; <?php echo $product['persons']; ?>-Person</p>
        <p class="price">
          <span class="price-new"><?php echo $product['groupon_price']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
        </p>
        </div>
        <div class="col-xs-6">
        <a class="btn btn-go groupon-btn" href="<?php echo $product['href']; ?>" title="Groupon <?php echo $product['name']; ?>">Groupon > </a>
        </div>
        </div>
		
      </div>

    </div>
  </div>
  <?php } ?>
</div>
