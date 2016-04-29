<?php 

namespace App\Http\Controllers;

class PagesController extends  Controller {

	public function getIndex() {
		return view('pages.welcome');
	}

	public function getAbout() {
		$first = "Steven";
		$last = "Jasionowicz";

		$fullname = $first . " " . $last; 
		return view('pages.about')->withFullname($fullname);
	}

	public function getContact() {
		return view('pages.contact');
	}

}