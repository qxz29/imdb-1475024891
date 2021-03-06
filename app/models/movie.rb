class Movie < ApplicationRecord
  # Direct associations

  belongs_to :director,
             :counter_cache => true

  has_many   :characters,
             :dependent => :destroy

  # Indirect associations

  has_many   :actors,
             :through => :characters,
             :source => :actor

  # Validations

end
