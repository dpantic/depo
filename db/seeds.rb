# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

Product.destroy_all

Product.create(:title => 'Programming Ruby 1.9', :description =>
%{<p
    Ruby is the fastest growing and most exciting dynamic language out there.
     If you need to get working programs delivered fast, you should add Ruby 
     to your toolbox.},
     :image_url => '/images/logo.png',
     :price => 49.50)
     
Product.create(:title => 'Ruby on Rails Book', :description =>
     %{<p
         Rblablabla.},
          :image_url => '/images/rails.png',
          :price => 32.50)
     