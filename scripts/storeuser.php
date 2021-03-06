<?php
/* E-mail confirmation sample for BlackBerry 10 - Server side
 * Copyright (C) <2015> Durval Pereira <durval@compelab.org>
 * Copyright (C) <2015> Leandro Melo de Sales <leandro@compelab.org>
 *
 * This code is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Library General Public
 * License as published by the Free Software Foundation; either
 * version 2 of the License, or (at your option) any later version.
 *
 * This code is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Library General Public License for more details.
 *
 * You should have received a copy of the GNU Library General Public
 * License along with this code; if not, write to the
 * Free Software Foundation, Inc., 59 Temple Place - Suite 330,
 * Boston, MA 02111-1307, USA.
 */

/*
 * NOTE: This is a sample script and it is not recomended to use it in
 * production environment due to the lack of additional parameters
 * handlings.
 */
$name = (isset($_POST['name'])) ? $_POST['name'] : '';
$email = (isset($_POST['email'])) ? $_POST['email'] : '';

if ((!empty($name)) && (!empty($email))) {
	$headers = "";
	// To send HTML mail, the Content-type header must be set
	//$headers .= 'MIME-Version: 1.0' . "\r\n";
	//$headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
	$subject = "Sample of automatic e-mail confirmation in BlackBerry 10";
	$message = "Dear " . $name . ", thanks for signing up for our service. To confirm your account, please click on the url: http://www.compelab.org/ec/scripts/confirm.php";
	$headers .= "From: Sample in BlackBerry 10 <emailconfirmation@compelab.org>";
	mail($email, $subject, $message, $headers);
	$array = array('id' => '0', 'message' => 'E-mail confirmation sent.');
	$json = json_encode($array);
	echo $json;
} else {
	$array = array('id' => '2', 'message' => 'Invalid name and/or e-mail.');
	$json = json_encode($array);
	echo $json;
}
?>
