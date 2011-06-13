# encoding: UTF-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
Product.create!(:name => 'HP laser jet P1505', :description => 'Impresora laser hogareña con una unica bandeja, cartucho de toner economico y papel hasta 250und',:price => 300.00)
Product.create!(:name => 'HP laser jet P1020', :description => 'Impresora laser hogareña con una unica bandeja, cartucho de toner economico y papel hasta 100und',:price => 200.00)
Product.create!(:name => 'HP notebook nx8230', :description => 'notebook de negocios, confiable y robusta, intel core 2 duo, 4Gb RAM, HD500',:price => 1200.00)
Product.create!(:name => 'Toshiba notebook A3', :description => 'notebook intel core 2 duo, 3Gb RAM, HD120',:price => 700.00)
Product.create!(:name => 'Monitor Benq 17', :description => 'alto contraste, nitido, widescreen',:price => 150.00)
Product.create!(:name => 'Router LinkSys wrt54g', :description => 'router hogareño posee 4 bocas 10/100, conexion inhalambrica con doble antena, absolutamente configurable',:price => 75.00)
Product.create!(:name => 'Camara Benq 14M', :description => 'Camara de 14Mgp - video, mil caracteristicas que nunca podrá utilizar',:price => 110.00)
Product.create!(:name => 'Samsung Galaxy S', :description => 'Telefono con sistema operativo android, wifi, touch',:price => 2000.00)
Product.create!(:name => 'MacBook 13', :description => 'intel dual core, 13.3, 4Gb, HD250Gb, MacOSX 10.6',:price => 600.00)
Product.create!(:name => 'Portafolio para notebook', :description => 'varios colores en nylon resistente al agua',:price => 100.00)
Product.create!(:name => 'Lapiz - portamina', :description => 'resiste todo y mas',:price => 7.00)

#.. Facil pero muy facil. Insertamos datos por una cantidad mayor facilmente ..

(1..100).each {|i| Product.create!(:name => 'Product N:' + i.to_s,
 :description => "Description de texto variable para que se enumeren todas las virtudes de nuestro produto n: " + i.to_s,
:price => (i.to_f * 10) + (i * i)  )}

