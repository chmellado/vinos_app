class Revistum < ApplicationRecord
 has_many :cargos
 has_many :enologos, through: :cargos
end 
