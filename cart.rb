cart = {}
summ = 0

loop do
  print "Введите название товара или 'стоп' для рассчета стоимости: "
  item = gets.chomp
  break if item == "стоп"
  print "Введите стоимость: "
  cost = gets.to_f
  print "Введите количество: "
  quantity = gets.to_f
  cart[item] = { cost: cost, quantity: quantity, item_summ: cost * quantity }
end

puts "В вашей корзине"
cart.each  do |item_name, properties|
  puts "#{item_name}, цена за один товар: #{properties[:cost]}, полная стоимость: #{properties[:item_summ]}"
  summ += properties[:item_summ]
end

puts "Полная стоимость ваших товаров: $#{summ} "
