require 'yaml'

class User_Profile
  @pref_filename = 'userPref.txt'
  @pref_userSettings = {}
  def initialize
    loadUser
    @userName = 'test user'
  end

  def newUser
    print "Create a Username: "
    userName = gets.chomp
    File.open "#{userName}Pref.txt", 'w' do |f|
      f.write (object.to_yaml)#PREFERENCES
    end
  end

  def loadUser
    puts "Enter username or type 'New User' to creat a new user."
    print "Username: "
    userName = gets.chomp

    if userName.downcase == 'new user'
      newUser
    else
      @pref_filename = "#{userName}Pref.txt"
      elsif !@pref_filename.exist?
        puts "Username does not exist!"
        loadUser
      end
    end
  end

  def getUserPref prefFile
    prefString = File.read prefFile
    user_pref = {}
    prefString.each_line do |text|
      dividerPlace = text.index(':')
      dividerOption = text.index('#')
      pref_ID = text[0..dividerPlace - 1].strip
      pref_setting = text[dividerPlace +1 .. dividerOption -1].strip
      user_pref[pref_ID] = pref_setting
    end
    return user_pref
  end


# pref_filename = 'userPref.txt'

puts pref_filename.exists?
puts getUserPref pref_filename
