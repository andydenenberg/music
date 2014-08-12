module SongsHelper

  def users
    user = Array.new
    user = [['Roberta' , 1], ['Ed' , 2], ['Andy', 3], ['Ann', 4], ['Paul', 5], ['Bob', 6], ['Bev', 7], ['Val', 8]]
    return user
  end
  
  def x_users(user) # used to translate value stored into english
    users = Array.new
    users = ['skip', 'Roberta', 'Ed', 'Andy', 'Ann', 'Paul', 'Bob', 'Bev', 'Val']
    users[user]
  end
  
  def colorize_by_name(user)
    colors = [ '', 'btn-primary', 'btn-info', 'btn-success', 'btn-warning', 'btn-danger', 'btn-inverse']
    return colors[user]
  end

end
