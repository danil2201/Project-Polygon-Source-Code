<?php

ini_set('display_errors', 1);

ini_set('display_startup_errors', 1);

error_reporting(E_ALL);


define("SITE_CONFIG", 

	[
 
		"database" =>
  
		[
  
			"host" => "127.0.0.1",  // Change to the IP address of your SQL database
   
			"schema" => "polygon", // Do not change the db name!
   
			"username" => "root", // Username
   
			"password" => "" // Password
   
		],

		"site" =>
  
		[
			"name" => "Project Polygon", // Site name
   
			"name_secondary" => "Polygon", // Secondary name
   
			"currencyName" => "Pizzas" // Currency
   
		],

		"captcha" =>
  
		[
			"siteKey" => "undefined",
   
			"privateKey" => "undefined"
   
		]
  
]);
