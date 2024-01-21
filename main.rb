require_relative 'suica'
require_relative 'drink'
require_relative 'vending_machine'

suica = Suica.new
suica.charge(1500)

vm = VendingMachine.new
puts "初期状態の在庫リスト"
puts "ペプシの在庫数：#{vm.stock_info('ペプシ')}本 モンスターの在庫数：#{vm.stock_info('モンスター')}本 いろはすの在庫数：#{vm.stock_info('いろはす')}本" #未購入じの在庫一覧


vm.replenish('ペプシ', 1) # ペプシ1本補充
vm.replenish('モンスター', 50)
vm.replenish('いろはす', 10)

puts "補充後の在庫リスト"
puts "ペプシの在庫数：#{vm.stock_info('ペプシ')}本 モンスターの在庫数：#{vm.stock_info('モンスター')}本 いろはすの在庫数：#{vm.stock_info('いろはす')}本" #ペプシ1本補充後の在庫一覧

puts "購入可能なドリンクリスト：#{vm.available_drink_list(suica)}"


vm.purchase('ペプシ', suica) 
vm.purchase('ペプシ', suica)
vm.purchase('ペプシ', suica)
vm.purchase('ペプシ', suica)
vm.purchase('ペプシ', suica)
vm.purchase('ペプシ', suica)

vm.purchase('モンスター', suica)
vm.purchase('モンスター', suica)
vm.purchase('いろはす', suica)

puts "購入後の在庫リスト"
puts "ペプシの在庫数：#{vm.stock_info('ペプシ')}本 モンスターの在庫数：#{vm.stock_info('モンスター')}本 いろはすの在庫数：#{vm.stock_info('いろはす')}本" # 在庫にある6本すべてのペプシを購入後の在庫一覧

# vm.purchase('ペプシ', suica) # 在庫0の状態でペプシを購入したらエラーが発生する

puts "購入可能なドリンクリスト：#{vm.available_drink_list(suica)}"

puts "チャージ残高：#{suica.balance}円"
puts "売上金額：#{vm.sales}円"

puts "補充後の在庫リスト"
