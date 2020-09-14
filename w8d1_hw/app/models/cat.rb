# == Schema Information
#
# Table name: cats
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Cat < ApplicationRecord
    validates :name
    has_many :toys, as: :toyable
end
