class Enologo < ApplicationRecord
  has_many :cargos
  has_many :revista, through: :cargos
  has_many :nota
  has_many :vino, through: :nota
end
