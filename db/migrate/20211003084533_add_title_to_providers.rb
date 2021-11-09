class AddTitleToProviders < ActiveRecord::Migration[6.1]
  def change
    add_column :providers, :title, :string,
    
  end
end
