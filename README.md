# Project-Polygon-Source-Code
The source code is really good and pizza did a great job on it. Pizzaboxer dropped the source on polygon discord (not by mistake) so that why this repo is here. The source is not the newest, it is from october 2020 and has no SQL cause pizza let figuring out the SQL structure as a challenge. So i will be accepting his challenge and i will figure out the SQL structure and upload it in the vapor edition of this source code on this repo when i am done.

# Guide
Connect to your server via SSH.

Install Apache2 by executing the command:

sudo apt install apache2

If you are using Oracle, follow the instructions for installing Apache on Ubuntu using Oracle.

Download the entire repository and copy the contents of the "website" folder.

Navigate to the "api/private/" folder and open the "config.php" file.

Inside the file, you will see the following code:



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
Change the names!

Obtain the siteKey and privateKey for the captcha by following the Google reCAPTCHA v3 instructions.

Insert the obtained siteKey and privateKey into the corresponding fields in the config.php file.
Now your website is ready for use!


# Proof that i am not bullshitting:
![Iamnotbullshitting](https://github.com/FlarfGithub/Project-Polygon-Source-Code/blob/main/proof.png?raw=true)
