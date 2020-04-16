def who_is_online(friends)
  connections = Hash.new { |hash, status| hash[status] = [] }

  friends.each do |friend|
    if friend['status'] == 'offline'
      connections['offline'] << friend['username']
    elsif friend['status'] == 'online' && friend['last_activity'] > 10
      connections['away'] << friend['username']
    else
      connections['online'] << friend['username']
    end
  end

  return connections
end
