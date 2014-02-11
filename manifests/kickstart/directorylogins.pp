# Configure ARD Directory Logins
class osx_ard::kickstart::directorylogins{
  $kickstart = $osx_ard::kickstart

  exec { 'Kickstart ARD Directory Logins' :
    command => "${kickstart} -configure -clientopts -setdirlogins -dirlogins yes",
    unless  => '/usr/bin/defaults read /Library/Preferences/com.apple.RemoteManagement DirectoryGroupLoginsEnabled',
  }

}