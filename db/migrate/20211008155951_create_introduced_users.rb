class CreateIntroducedUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :introduced_users do |t|
      t.string :name
      t.string :phonenumber
      t.text :contents

      t.timestamps
    end
  end
end
