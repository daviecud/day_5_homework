#1
def pet_shop_name(name)
  name = @pet_shop[:name]
end
#2
def total_cash(sum)
  sum = @pet_shop[:admin][:total_cash]
end
#3,4
def add_or_remove_cash(total, amount)
  total[:admin][:total_cash] += amount
  return total[:admin][:total_cash]
  total[:admin][:total_cash] -= amount
  return total[:admin][:total_cash]
end
#5
def pets_sold(sold)
  sold = @pet_shop[:admin][:pets_sold]
end
#6
def increase_pets_sold(sold, amount)
  sold[:admin][:pets_sold] += amount
end
#7
def stock_count(count)
  count = @pet_shop[:pets].length
end
#8, 9
def pets_by_breed(shop, pet)
  return shop[:pets].select{|p| p[:breed] == pet}
end
#10, 11
def find_pet_by_name(shop, name)
  shop[:pets].assoc(name)
  #return shop[:pets].eql?(name)
  # for shop[:pets].select{|p| p[:name] == p}
  #   return true
  # end

  #  for shop.each do |s|
  #   return s
  # else
  #   return nil
  # end  #return s[:pets].select{|p| p[:name] == name}
  #shop[:pets].select(name)
  #shop[:pets][:name].select{|n| n == name}
  # if shop[:pets][:name] == name
  #
  #     return true
  #  else
  #       return nil
  #  end
  #   end#return shop[:pets][:name].include?(name) #{|n| n[:name] == name}
  # for n in shop[:pets][:name]
  #    if n == name
  #      return true
  #    end
  #  end
  #  return nil
end
#12
def remove_pet_by_name(shop, name)
  shop[:pets].delete(name)
end
#13
def add_pet_to_stock(shop, stock)
  dog = {
    name: "Willie",
    pet_type: "bird",
    breed: "budgie",
    price: 100
  }

  shop[:pets] << dog
end
#14
def customer_cash(cash)
  cash = @customers[0][:cash]
end
#15
def remove_customer_cash(person, amount)
  person[:cash] -= amount
end
#16
def customer_pet_count(count)
  count = @customers[0][:pets].count
end
#17
def add_pet_to_customer(person, pet)
  person[:pets].push(pet)
end
