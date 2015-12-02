namespace :db do
	desc "Erase and fill database"
	task :populate => :environment do
		require 'populator'
		require 'faker'

		[Product].each(&:delete_all)

		Product.populate 15 do | product |
			product.name = Populator.words(1..3).titleize + " Rotary Phone"
			product.image_id = "#{product.id}.jpg"
			product.description = Populator.sentences(2..10)
			product.short_description = product.description.first(99)
			product.price = rand(33.99..129.99)
			product.cost_price = product.price*(rand(0.5..0.8))
			product.created_at = 1.years.ago..Time.now
		end
	end
end
