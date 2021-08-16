class User
 attr_reader :name, :address, :email
 def initialize(name, address, email)
  @name = name
  @address = address
  @email = email
 end
end

class Myclass
  def method_1
    @number = 200
  end

  def method_2
    @number
  end
end

class Person
  def initialize(money)
    @money = money
  end

  # 億万長者かどうかを返す
  def billionaire?
    money >= 1000000000
  end

private

  def money
    @money
  end
end

def name(full: true, with_age: true)
  n = if full
    "#{family_name} #{given_name}"
  else
    given_name
  end
  n << "(#{age})" if with_age
  n
end

class PricedObject
  def total_price
    price * Tax.rate
  end

  def price
    # 「raise NotImplementedError」は機能が実装されていないことを表すエラーを発生させるコードです
    raise NotImplementedError
  end
end

class Product < PricedObject
  attr_accessor :price
end

class OrderedItem < PricedObject
  attr_accessor :unit_price, :volume

  # 税抜価格 * 数量
  def price
    unit_price * volume
  end
end

class Book
  def title
    '本のタイトル'
  end
end

class Magazine < Book
  def title
    '雑誌のタイトル'
  end
end

class BaseTask
  def puts_message
    puts "BaseTask のタイトル"
  end
end

class Task < BaseTask
  def puts_message
    super
    puts "Taskのタイトル"
  end
end

# おしゃべり能力
module Chatting
  def chat
    "hello"
  end
end

# 泣く能力
module Weeping
  def weep
    "しくしく"
  end
end

class Human
  include Chatting
  include Weeping
end

class Dog
  include Chatting
end

# 価格についての共通機能をまとめたモジュール
module PriceHoluder
  def total_price
    price * Tax.rate
  end
end

class Product
  include PriceHoluder

  attr_accessor :price
end

class OrderedItem
  include PriceHoluder

  attr_accessor :unit_price, :volume

  # 税抜き単価 * 数量
  def price
    unit_price * volume
  end
end

