class AddContentsToProviders < ActiveRecord::Migration[6.1]
  def change
    add_column :providers, :content, :string
    add_column :providers, :reward, :integer
  end
end
