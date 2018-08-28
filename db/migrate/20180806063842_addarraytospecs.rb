class Addarraytospecs < ActiveRecord::Migration[5.2]
  def change
  	add_column :specialities, :mark, :string, :default => [].to_yaml
  end
end
