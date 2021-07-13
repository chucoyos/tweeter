json.extract! tweet, :id, :title, :likesCount, :retweetsCount, :created_at, :updated_at
json.url tweet_url(tweet, format: :json)
