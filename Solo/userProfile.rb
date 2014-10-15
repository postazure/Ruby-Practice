require 'yaml'

class UserProfile

  def initialize
    @pref_filename = 'userPref.txt'
    @pref_userSettings = {'bold' => 'on, off', 'open' => 'min, max', 'resolution' => 'high, low'}
    @userName = ''

    userLogin
  end

  def newUser
    print "Create a Username: "
    @userName = gets.chomp
    puts
    puts "You need to setup your preferences to continue."

    @pref_userSettings.each do |key, value|
      puts "#{key}: #{value} <- type in your selection"
      userSelection = gets.chomp.upcase
      @pref_userSettings[key] = "#{userSelection} ##{value}"
    end


    filename = "#{@userName}Pref.txt" # we need to check if user already exists
    @pref_filename = filename
    yaml_save(@pref_userSettings, filename)
    loadUserPref

  end

  def userLogin
    puts "Enter username or type 'New User' to creat a new user."
    print "Username: "
    @userName = gets.chomp

    if @userName.downcase == 'new user'
      newUser
    else
      @pref_filename = "#{@userName}Pref.txt"
      if !File.exist?(@pref_filename)
        puts "Username does not exist!"
        userLogin
      else
        loadUserPref

      end
    end
  end

  def loadUserPref
    prefArray = yaml_load @pref_filename
    user_pref = {}
    print "Loading Preferences."
    prefArray.each do |key, value|

      dividerOption = value.index('#')

      pref_setting = value[0 .. dividerOption -1].strip
      user_pref[key] = pref_setting
      print "."
    end
    puts
    @pref_userSettings = user_pref
    puts "User: #{@userName.capitalize}, preferences have been loaded."
    puts
    return @pref_userSettings
  end

  def yaml_save object, filename
    File.open filename, 'w' do |f|
      f.write(object.to_yaml)
    end
  end

  def yaml_load filename
    yaml_string = File.read(filename)
    YAML::load yaml_string
  end


  #---List
  def getUserPref_list
    keyList = []
    @pref_userSettings.each_key do |key|
      keyList.push(key)
    end
    return keyList
  end
  #---View
  def getUserPref_bold
    @pref_userSettings['bold']
  end
  def getUserPref_open
    @pref_userSettings['open']
  end
  def getUserPref_resolution
    @pref_userSettings['resolution']
  end
  #---Modify
  def modUserPref_bold
    puts "MODIFY"
    modUserPref('bold')
  end
  def modUserPref_open
    modUserPref('open')
  end
  def modUserPref_resolution
    modUserPref('resolution')
  end
  def modUserPref key
    puts "#{key}: #{@pref_userSettings[key]} <- type in your selection"
    userSelection = gets.chomp.upcase
    @pref_userSettings[key] = "#{userSelection} ##{value}"
  end



end

# user = User_Profile.new
