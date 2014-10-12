<script type="text/javascript">
	var childCount = ${clientOrderInstance?.products.size()}+ 0;

	function addProduct(){
		var clone = $("#product_clone").clone()
		var htmlId = 'productsList['+childCount+'].';
		var productInput = clone.find("input[id$=productId]");

		clone.find("input[id$=id]")
			.attr('id',htmlId + 'id')
			.attr('name',htmlId + 'id');
		clone.find("input[id$=deleted]")
			.attr('id',htmlId + 'deleted')
			.attr('name',htmlId + 'deleted');
		clone.find("input[id$=new]")
			.attr('id',htmlId + 'new')
			.attr('name',htmlId + 'new')
			.attr('value', 'true');
		phoneInput.attr('id',htmlId + 'productId')
			.attr('name',htmlId + 'productId');
		phoneInput.attr('id', htmlId + 'descricao')
			.attr('name',htmlId + 'descricao');
		phoneInput.attr('id', htmlId + 'valorUnit')
			.attr('name',htmlId + 'valorUnit');
		phoneInput.attr('id', htmlId + 'tipo')
			.attr('name',htmlId + 'tipo');
		phoneInput.attr('id', htmlId + 'estampa')
			.attr('name',htmlId + 'estampa');
		phoneInput.attr('id', htmlId + 'cor')
			.attr('name',htmlId + 'cor');
		phoneInput.attr('id', htmlId + 'pcgLucro')
			.attr('name',htmlId + 'pcgLucro');
		
		//VOLTAR E DIGITAR
		clone.attr('id', 'product'+childCount);
		$("#childList").append(clone);
		clone.show();
		productInput.focus();
		childCount++; 
		}
	
	//bind click event on delete buttons using jquerry live
	$('.del-product').live('click', function(){
		//find the parent div
		var prnt = $(this).parents(".product-div");
		//find the delted hiden input
		var delInput = prnt.find("input[id$=deleted]");
		//check if this is still not persisted
		var newValue = prnt.find("input[id$=new]").attr('value');
		//if it is new than i can safelu remove dom
		if(newValue == 'true'){
			prnt.remove();
		}else{
			//set deletedFlag to true
			delInput.attr('value','true');
			//hide the div
			prnt.hide();
		}
			
	});
</script>

<div id="childList">
    <g:each var="product" in="${clientOrderInstance.products}" status="i">
        <!-- Render the product template (_product.gsp) here -->
        <g:render template='../product/form' model="['product':product,'i':i,'hidden':false]"/>
        <!-- Render the product template (_product.gsp) here -->
    </g:each>
</div>
<input type="button" value="Add Product" onclick="addProduct();" />