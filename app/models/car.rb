class Car < ActiveRecord::Base
  def self.by_model
    order(:model)
  end

  def self.by_make
    order(:make)
  end

  def self.by_price(high = false)
    if high
      order(price: :desc)
    else
      order(:price)
    end
  end

  def paint(color)
    self.update(color: color)
  end

  def info
  end

  def honk
    puts "beep"
  end
end
