class AddColumnsToProviders < ActiveRecord::Migration[6.1]
  def change
    add_column :providers, :appeal, :string
    add_column :providers, :rcontent, :string
    add_column :providers, :rday, :string
  end
end
