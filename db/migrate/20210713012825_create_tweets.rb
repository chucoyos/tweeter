class CreateTweets < ActiveRecord::Migration[6.1]
  def change
    create_table :tweets do |t|
      t.string :title
      t.integer :likesCount
      t.integer :retweetsCount

      t.timestamps
    end
  end
end
