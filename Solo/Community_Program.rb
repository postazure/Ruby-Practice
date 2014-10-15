require_relative 'userProfile'
require_relative 'menu'


$user = UserProfile.new
$menu = Menu.new


def main_menu
  while true
    selection = $menu.main_menu
    if selection == 1
      menu_list = $user.getUserPref_list
      selection = $menu.displayMenu(menu_list)
      if selection == 1
        $user.getUserPref_bold
      elsif selection == 2
        $user.getUserPref_open
      elsif selection == 3
        $user.getUserPref_resolution
      else
        main_menu
      end
    elsif selection == 2
      puts """
      Sorry, this option doesn't exits.
      Press enter/return to return to the Main Menu.
      """
      gets
      main_menu
    else exit
    end
  end
end
main_menu
