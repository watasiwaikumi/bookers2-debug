class CreateApplicationMailers < ActiveRecord::Migration[5.2]
  def change
    create_table :application_mailers do |t|

      t.timestamps
    end
  end
end
