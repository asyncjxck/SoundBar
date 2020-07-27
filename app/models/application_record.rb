class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def name=(value)
    write_attribute(:name, value.titleize)
  end

  def username(value)
    write_attribute(:name, value.titleize)
  end

  def instrument_type=(value)
    write_attribute(:instrument_type, value.titleize)
  end

  def description=(value)
    write_attribute(:description, value.titleize)
  end
end
