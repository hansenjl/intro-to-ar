class CreateRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :roles do |t|
      t.references :movie
      t.belongs_to :actor
    end
  end
end
