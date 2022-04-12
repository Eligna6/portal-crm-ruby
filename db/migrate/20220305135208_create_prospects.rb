class CreateProspects < ActiveRecord::Migration[7.0]
  def change
    create_table :prospects do |t|
      t.string :email
      t.string :name
      t.string :phone
      t.string :status
      t.string :entered_by

      t.timestamps
    end
  end
end
