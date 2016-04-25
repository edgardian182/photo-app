class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_one :payment # Sólo se solicitará un pago al usuario
  accepts_nested_attributes_for :payment # Acepta los atributos anidados a Payment a través de la Forma de Users
         
  
end
