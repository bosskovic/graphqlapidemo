class AddClientRefToStudents < ActiveRecord::Migration[7.1]
  def change
    add_reference :students, :client, null: false, foreign_key: true
  end
end
