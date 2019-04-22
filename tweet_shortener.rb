# Write your code here.
def dictionary
  {"hello" => "hi", "to" => '2', "two" => '2', "too" => '2', "for" => '4', "four" => '4', "be" => 'b', "you" => 'u', "at" => "@", "and" => "&"}
end

def word_substituter(tweet)
  dictionary
  array = tweet.split(' ')
  keywords = dictionary.keys
    array.collect do |word|
      keywords.each do |word2|
        if word == word2
          word = dictionary[word2]
        end
      end
  end
  array.join(' ')
end

def bulk_tweet_shortener(tweets)
  tweets.each do |string|
    puts word_substituter(string)
 end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else tweet
end
end

shortened_tweet_truncator(tweet)
  if tweet.length > 140 && word_substituter(tweet) > 140
    newtweet = "#{tweet[0..140]}..."
  elsif tweet.length > 140 && word_substituter(tweet) <= 140
    newtweet = word_substituter(tweet)
  else newtweet = tweet
end
newtweet
end
    
  