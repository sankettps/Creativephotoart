# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
  ad_types = AdType.create(
  	[
  		{ name: 'splash_big_native' }, 
  		{ name: 'splash_small_native' },
  		{ name: 'start_click_interstitial' },
  		{ name: 'image_select_interstitial' },
  		{ name: 'edit_screen_banner' },
  		{ name: 'save_click_interstitial' },
  		{ name: 'share_big_native' },
  		{ name: 'image_view_small_native_top' },
  		{ name: 'image_view_small_native_bottom' },
  		{ name: 'frame_small_native	' },
		])
#   Character.create(name: 'Luke', movie: movies.first)
