# == Schema Information
#
# Table name: students
#
#  id             :bigint           not null, primary key
#  date_of_birth  :datetime
#  name           :string
#  place_of_birth :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  client_id      :bigint           not null
#
# Indexes
#
#  index_students_on_client_id  (client_id)
#
# Foreign Keys
#
#  fk_rails_...  (client_id => clients.id)
#
class Student < ApplicationRecord
  belongs_to :client
end
