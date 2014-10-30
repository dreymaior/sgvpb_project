<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">
  		<asset:stylesheet src="application.css"/>
		<asset:javascript src="application.js"/>
		<g:layoutHead/>
		<style type="text/css" media="screen">
			#carinha {
				background-color: #c0c0c0;
				float: right;
				margin: 2em 2em 2em;
			}
		</style>
	</head>
	<body>
		<div id="grailsLogo" role="banner"><a href="localhost:8080/sgvpb_project/"><asset:image src="logo_sgvpb.png" alt="SGVPB"/></a>
			<div id="carinha">
			<g:mensLogin />
			</div>
		</div>
		
		
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
			    <li><a class="list" href="${createLink(uri: '/clientOrder/')}"><g:message code="Pedidos"/></a></li>
				<li><a class="list" href="${createLink(uri: '/product/')}"><g:message code="Produtos"/></a></li>	
				<li><a class="list" href="${createLink(uri: '/colaborator/')}"><g:message code="Clientes"/></a></li>
				<li><a class="list" href="${createLink(uri: '/vendor/')}"><g:message code="Fornecedores"/></a></li>
			    <li><g:loginControl /></li>			
			    <li><a class="help" href="${createLink(uri: '/user/help')}"><g:message code="Ajuda"/></a></li>		
			</ul>		
		</div>
				
		<g:layoutBody/>
		
		<div class="footer" role="contentinfo"></div>
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
	</body>
</html>
