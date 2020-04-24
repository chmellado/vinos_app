class Vino < ApplicationRecord
  has_many :ensamblajes
  has_many :cepas, through: :ensamblajes
  has_many :nota
  has_many :enologo, through: :nota
end
