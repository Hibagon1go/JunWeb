class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name, default:'Jun'
      t.string :email, default:'jun.pokepoke@docomo.ne.jp'
      t.string :password_digest, default:'Yotto0416'

      t.timestamps
    end
  end
end
