#Song.all.collect { |song| ":user => '#{song.user}', :artist => '#{song.artist}', :name => '#{song.name}', :youtube_id => '#{song.youtube_id}', :filename => '#{song.filename}'"  }

#rails g scaffold song artist:string name:string user:integer youtube_id:string filename:string played:integer rating:integer comments:string

namespace :songs do
  
desc 'Build the Databases'
task :setup => ["db:drop", "db:create", "db:migrate", "db:seed", "build_db"]

desc "Load Songs"
task :create_users => :environment do 
  user = User.create! :email => 'roberta@denenberg.net', :name => 'Roberta', :password => 'changeme', :password_confirmation => 'changeme' 
  user = User.create! :email => 'pinoe1118@yahoo.com', :name => 'Ed', :password => 'changeme', :password_confirmation => 'changeme' 
  user = User.create! :email => 'andy@denenberg.net', :name => 'Andy', :password => 'changeme', :password_confirmation => 'changeme' 
  user = User.create! :email => 'psneddon@consultingsolutionsinc.com', :name => 'Paul', :password => 'changeme', :password_confirmation => 'changeme' 
  user = User.create! :email => 'pino.ann@gmail.com', :name => 'Ann', :password => 'changeme', :password_confirmation => 'changeme' 
  user = User.create! :email => 'rjcoletta@dcamplaw.com', :name => 'Bob', :password => 'changeme', :password_confirmation => 'changeme' 
  user = User.create! :email => 'bevsneddon1@gmail.com', :name => 'Bev', :password => 'changeme', :password_confirmation => 'changeme' 
  user = User.create! :email => 'colettahome@mchsi.com', :name => 'Val', :password => 'changeme', :password_confirmation => 'changeme' 
end


desc "Load Songs"
task :load => :environment do  
song = Song.create! :user => 1, :artist => 'Bill Withers', :name => 'Lovely Day', :youtube_id => 'sYi7uEvEEmk', :filename => 'Bill Withers - Lovely Day (Original Version)'
song = Song.create! :user => 1, :artist => 'Bruno Mars', :name => 'Treasure', :youtube_id => 'nPvuNsRccVw', :filename => 'Bruno Mars - Treasure'
song = Song.create! :user => 1, :artist => 'Alicia Myers', :name => 'I Want to Thank You', :youtube_id => 'VpC637CBmBM', :filename => 'Alicia Myers - I Want To Thank You'
song = Song.create! :user => 1, :artist => 'Earth, Wind & Fire', :name => 'Boogie Wonderland', :youtube_id => 'god7hAPv8f0', :filename => 'Earth, Wind & Fire - Boogie Wonderland'
song = Song.create! :user => 1, :artist => 'Brothers Johnson', :name => 'Strawberry Letter # 23', :youtube_id => 'gC1TBxflN2I', :filename => 'Strawberry Letter 23 - The Brothers Johnson'
song = Song.create! :user => 1, :artist => 'Mary J Blige', :name => 'Just Fine', :youtube_id => 'G6ZjBPXSmnE', :filename => 'Mary J. Blige - Just Fine'
song = Song.create! :user => 1, :artist => 'Mary J Blige', :name => 'Come to Me (PEACE)', :youtube_id => 'H7bPB7WltuY', :filename => 'Mary J. Blige - Come To Me (PEACE)'
song = Song.create! :user => 1, :artist => 'R. Kelly', :name => 'Ignition', :youtube_id => 'b5A12o3vqOs', :filename => 'R. Kelly - Ignition (Remix)'
song = Song.create! :user => 1, :artist => 'Barry White', :name => 'Honey Please', :youtube_id => '_0kGv0FKvAI', :filename => 'Barry White - Honey Please Cant Ya See ( Lyrics )'
song = Song.create! :user => 1, :artist => 'Barry White', :name => "Can't Get Enough of Your Love Baby", :youtube_id => 'x0I6mhZ5wMw', :filename => "Barry White - Can't Get Enough Of Your Love Baby"

song = Song.create! :user => 2, :artist => 'Outlaws', :name => 'Green grass and high tides', :youtube_id => 'R82OM5tzcrk', :filename => 'Green Grass and High Tides'
song = Song.create! :user => 2, :artist => 'Boston', :name => 'More than A Feeling', :youtube_id => 'SSR6ZzjDZ94', :filename => 'Boston- More than A Feeling'
song = Song.create! :user => 2, :artist => 'Bruce Springsteen', :name => 'The Promised Land', :youtube_id => 'RsRNqF0CbC8', :filename => 'Bruce Springsteen - The Promised Land'
song = Song.create! :user => 2, :artist => 'Pink Floyd', :name => 'Another Brick In The Wall', :youtube_id => 'YR5ApYxkU-U', :filename => 'Pink Floyd - Another Brick In The Wall (HQ)'
song = Song.create! :user => 2, :artist => 'Otis Day and the Knights', :name => 'Shama Lama Ding Dong', :youtube_id => 'z2JFJ6B9xoY', :filename => 'Otis Day and the Knights Shama Lama Ding Dong'
song = Song.create! :user => 2, :artist => 'Marshall Tucker Band', :name => '24 Hours At A Time', :youtube_id => 'YvBFZf0vVPk', :filename => 'Marshall Tucker Band - 24 Hours At A Time (Live Version)'
song = Song.create! :user => 2, :artist => 'Kamakazi Klones', :name => 'Dork at the Party', :youtube_id => '', :filename => ''
song = Song.create! :user => 2, :artist => 'Temptations', :name => "Ain't Too Proud To Beg", :youtube_id => 'DxHMHrWJ2SE', :filename => "Ain't Too Proud To Beg - Temptations"
song = Song.create! :user => 2, :artist => 'Tom Petty & The Heartbreakers', :name => 'Even The Losers', :youtube_id => 'E30XxSYgmqo', :filename => 'Even The Losers - Tom Petty'
song = Song.create! :user => 2, :artist => 'Dire Straits', :name => 'Sultans Of Swing', :youtube_id => '8Pa9x9fZBtY', :filename => 'Dire Straits - Sultans Of Swing'

song = Song.create! :user => 3, :artist => 'St. Paul and the Broken Bones', :name => 'Call Me', :youtube_id => 'z7s9A3s8iv8', :filename => 'St. Paul and the Broken Bones - Call Me'
song = Song.create! :user => 3, :artist => 'Jesse Cook', :name => 'Havana', :youtube_id => 'F2SJf1J-LHA', :filename => "Jesse Cook's -Havana"
song = Song.create! :user => 3, :artist => 'Haim', :name => 'If I Could Change Your Mind', :youtube_id => 'Ljg6g7BAdQo', :filename => 'HAIM - If I Could Change Your Mind'
song = Song.create! :user => 3, :artist => 'Naughty Boy', :name => 'La La La', :youtube_id => '3O1_3zBUKM8', :filename => 'Naughty Boy - La La La'
song = Song.create! :user => 3, :artist => 'Iggy Azalea', :name => 'Fancy', :youtube_id => 'O-zpOMYRi0w', :filename => 'Iggy Azalea - Fancy'
song = Song.create! :user => 3, :artist => 'Head East', :name => 'Never Been Any Reason', :youtube_id => '_mZEdwDFYpI', :filename => 'Head East - Never Been Any Reason'
song = Song.create! :user => 3, :artist => 'Lou Reed', :name => 'Walk On The Wild Side', :youtube_id => '0KaWSOlASWc', :filename => 'Lou Reed - Walk On The Wild Side'
song = Song.create! :user => 3, :artist => 'The Cars', :name => 'Just What I Needed', :youtube_id => 'Z5-rdr0qhWk', :filename => 'THE CARS ― Just What I Needed'
song = Song.create! :user => 3, :artist => 'Earth Wind & Fire', :name => 'September', :youtube_id => 'Gs069dndIYk', :filename => 'Earth, Wind & Fire - September'
song = Song.create! :user => 3, :artist => 'Marshall Tucker Band', :name => 'Fire on the Mountain', :youtube_id => 'Qhl4UW_gFfY', :filename => 'Fire On The Mountain - Marshall Tucker'

song = Song.create! :user => 4, :artist => 'Ted Nugent', :name => 'Free Flight', :youtube_id => 'LsZu557nrIk', :filename => "Ted Nugent's Amboy Dukes - Free Flight"
song = Song.create! :user => 4, :artist => 'Tommy Bolin', :name => 'Standing in the Rain', :youtube_id => '1eoDg5fhIp8', :filename => 'Tommy Bolin - Standing In The Rain'
song = Song.create! :user => 4, :artist => 'Steve Miller', :name => 'The Window', :youtube_id => 'sG9Z7jYRe64', :filename => 'Steve Miller The Window'
song = Song.create! :user => 4, :artist => 'REO', :name => 'Roll With the Changes', :youtube_id => 'eGgLPriZUSA', :filename => 'REO Speedwagon - Roll With The Changes'
song = Song.create! :user => 4, :artist => 'Kamakazi Klones', :name => "Can't Buy the Beat", :youtube_id => 'dWVJJYtcVd0', :filename => "Can't Buy The Beat"
song = Song.create! :user => 4, :artist => 'Romantics', :name => 'What I Like About You', :youtube_id => 'Rqnw5IfbZOU', :filename => 'The Romantics - What I Like About You'
song = Song.create! :user => 4, :artist => 'Marshall Tucker', :name => 'Love is a Mystery', :youtube_id => '1T4tdIwYOcc', :filename => 'Love Is A Mystery by The Marshall Tucker Band'
song = Song.create! :user => 4, :artist => 'Molly Hatchet', :name => "Dreams I'll Never See", :youtube_id => 'wtC7i4KMRgo', :filename => "Molly Hatchet-Dreams I'll Never See"
song = Song.create! :user => 4, :artist => 'AC DC', :name => 'You Shook Me All Night Long', :youtube_id => 'Lo2qQmj0_h4', :filename => 'You Shook Me All Night Long'
song = Song.create! :user => 4, :artist => 'Theme from Rawhide', :name => 'Cattlechuck tune', :youtube_id => '2KPplYp7K7M', :filename => 'Frankie Laine - Rawhide'

song = Song.create! :user => 5, :artist => 'Blondie', :name => 'Rapture', :youtube_id => 'z9kDW3y268Y', :filename => 'BLONDIE  RAPTURE'
song = Song.create! :user => 5, :artist => 'Earth Wind and Fire', :name => 'Fantasy', :youtube_id => 'twICykaRRvY', :filename => 'EARTH WIND & FIRE - Fantasy'
song = Song.create! :user => 5, :artist => 'Rod Stewart', :name => 'Young Turks', :youtube_id => 'zQ41hqlV0Kk', :filename => 'Rod Stewart - Young Turks'
song = Song.create! :user => 5, :artist => 'Steely Dan', :name => 'Deacon Blues', :youtube_id => '2A0wGO3c2T8', :filename => 'Steely Dan-Deacon Blues'
song = Song.create! :user => 5, :artist => 'Toto', :name => '99', :youtube_id => 'uFeBp1PDKyg', :filename => 'Toto - 99'
song = Song.create! :user => 5, :artist => 'Elton John', :name => 'Tiny Dancer', :youtube_id => 'hoskDZRLOCs', :filename => 'Elton John - Tiny Dancer'
song = Song.create! :user => 5, :artist => '10cc', :name => 'I’m not in Love', :youtube_id => 'Y2BavhwpIJg', :filename => "10 CC - I'm Not In Love"
song = Song.create! :user => 5, :artist => 'Paul McCartney', :name => 'Band on the Run', :youtube_id => 'KBX2dySWGew', :filename => 'Wings - Band On The Run'
song = Song.create! :user => 5, :artist => 'Talking Heads', :name => 'And She Was', :youtube_id => 'YgSVTdAtNYE', :filename => 'Talking Heads - And She Was'
song = Song.create! :user => 5, :artist => 'Elvis Costello', :name => 'Veronica', :youtube_id => 'rp_YI30jhv8', :filename => 'ELVIS COSTELLO-veronica'

song = Song.create! :user => 6, :artist => 'Little Feat', :name => 'Trip Face Boogie', :youtube_id => 'WprmCj42aC0', :filename => "Trip Face Boogie - Little Feat"
song = Song.create! :user => 6, :artist => 'Little Feat', :name => 'Fat Man in the Bathtub', :youtube_id => 'kb-yB4OxGBA', :filename => "Little feat - Fatman in the Bathtub"
song = Song.create! :user => 6, :artist => 'Head East', :name => 'Never Been Any Reason', :youtube_id => '_mZEdwDFYpI', :filename => 'Head East - Never Been Any Reason'
song = Song.create! :user => 6, :artist => 'Starlight Ramblers', :name => 'The Auctioneer', :youtube_id => 'PPDtP0kviLg', :filename => "Starlite Ramblers - The Auctioneer"
song = Song.create! :user => 6, :artist => 'Asleep at the Wheel', :name => 'Route 66', :youtube_id => 'vifUaZQL8pc', :filename => "Asleep At The Wheel - Route 66"
song = Song.create! :user => 6, :artist => 'Romantics', :name => 'What I Like About You', :youtube_id => 'Rqnw5IfbZOU', :filename => 'The Romantics - What I Like About You'
song = Song.create! :user => 6, :artist => "Shout", :name => 'Otis Day & The Knights', :youtube_id => 'MG7KCOO76Wc', :filename => "Shout - Otis Day & The Knights"
song = Song.create! :user => 6, :artist => "The Theme From Nightline", :name => 'Ted Koppel Archives', :youtube_id => 'LsZu557nrIk', :filename => "The Best of Nightline with Ted Koppel part 1"
song = Song.create! :user => 6, :artist => "The Theme from Love Boat", :name => 'Love Boat', :youtube_id => 'ZmUlKPthrag', :filename => "Love Boat Theme"
song = Song.create! :user => 6, :artist => "All the Young Dudes", :name => 'Mott the Hoople', :youtube_id => 'VKvNtAVZyOc', :filename => "Mott the Hoople - All the Young Dudes"

song = Song.create! :user => 7, :artist => "Joni Mitchell", :name => 'California', :youtube_id => 'Lm39YkGrHp8', :filename => "Joni Mitchell - California", :comments => 'obviously'
song = Song.create! :user => 7, :artist => "Lady Antebellum", :name => 'Bartender', :youtube_id => '_rHuitW9xDc', :filename => "Lady Antebellum - Bartender", :comments => 'who doesn’t love a good drinking song?'
song = Song.create! :user => 7, :artist => "John Legend", :name => 'All of Me', :youtube_id => '450p7goxZqg', :filename => "John Legend - All of Me", :comments => 'sweet couple song'
song = Song.create! :user => 7, :artist => "Jackson Brown", :name => 'The Pretender', :youtube_id => 'AQiXQUGbac0', :filename => "Jackson Browne - The Pretender", :comments => '70s!'
song = Song.create! :user => 7, :artist => "James Taylor", :name => 'Shower the People', :youtube_id => '5sCc5L7yOck', :filename => "James Taylor - Shower The People", :comments => 'best JT song for a group who loves each other'
song = Song.create! :user => 7, :artist => "Taylor Swift", :name => '22', :youtube_id => 'AgFeZr5ptV8', :filename => "Taylor Swift - 22", :comments => 'because we were 22 and I love Taylor Swift'
song = Song.create! :user => 7, :artist => "One Republic", :name => 'Counting Stars', :youtube_id => 'hT_nvWreIhg', :filename => "OneRepublic - Counting Stars", :comments => 'because I really like this one'
song = Song.create! :user => 7, :artist => "Maroon 5", :name => 'Nothing Lasts Forever', :youtube_id => 'tQ2oe8SgUS8', :filename => "MAROON 5- NOTHING LAST FOREVER", :comments => 'because I really like Maroon 5 and especially Adam Levine'
song = Song.create! :user => 7, :artist => "Bee Gees", :name => 'Stayin Alive', :youtube_id => 'I_izvAbhExY', :filename => "Bee Gees - Stayin' Alive (1977)", :comments => 'to bring us back to the disco ball'
song = Song.create! :user => 7, :artist => "Carly Simon", :name => "You're So Vain - Carly Simon", :youtube_id => 'kb-yB4OxGBA', :filename => "Carly Simon - You're So Vain", :comments => 'great song'


end
  
end
