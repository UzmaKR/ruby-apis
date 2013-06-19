get '/' do

 client = Octokit::Client.new(:login => "UzmaKR", :password => ENV['GITHUB_PASSWORD'])
 @api_user_info = client.user "UzmaKR"
 @api_follow = client.follow "Stephenitis"
 @api_commits = client.commits "mattbarackman/recent_tweets_1"
 @api_list_commits = client.list_commits "mattbarackman/recent_tweets_1"

 @api_repo_contents= Octokit.contents("UzmaKR/anagram_server")
  # Look in app/views/index.erb
 erb :index
end
