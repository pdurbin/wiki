https://rvm.io/rvm/install/

    [pdurbin@server1 ~]$ curl -L get.rvm.io | bash -s stable
      % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                     Dload  Upload   Total   Spent    Left  Speed
    100  8844  100  8844    0     0  14193      0 --:--:-- --:--:-- --:--:-- 14193
    Downloading RVM from wayneeseguin branch stable
      % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                     Dload  Upload   Total   Spent    Left  Speed
    100 1023k  100 1023k    0     0   993k      0  0:00:01  0:00:01 --:--:-- 2477k

    Installing RVM to /home/pdurbin/.rvm/
        Adding rvm PATH line to /home/pdurbin/.bashrc /home/pdurbin/.zshrc.
        Adding rvm loading line to /home/pdurbin/.bash_profile /home/pdurbin/.zlogin.

    # RVM:  Shell scripts enabling management of multiple ruby environments.
    # RTFM: https://rvm.io/
    # HELP: http://webchat.freenode.net/?channels=rvm (#rvm on irc.freenode.net)
    # Cheatsheet: http://cheat.errtheblog.com/s/rvm/
    # Screencast: http://screencasts.org/episodes/how-to-use-rvm

    # In case of any issues read output of 'rvm requirements' and/or 'rvm notes'

    Installation of RVM in /home/pdurbin/.rvm/ is almost complete:

      * To start using RVM you need to run `source /home/pdurbin/.rvm/scripts/rvm`
        in all your open shell windows, in rare cases you need to reopen all shell windows.

    # Philip Durbin,
    #
    #   Thank you for using RVM!
    #   I sincerely hope that RVM helps to make your life easier and more enjoyable!!!
    #
    # ~Wayne


    rvm 1.13.4 (stable) by Wayne E. Seguin <wayneeseguin@gmail.com>, Michal Papis <mpapis@gmail.com> [https://rvm.io/]

    [pdurbin@server1 ~]$ 

http://git.greptilian.com/?p=salt.git;a=blob;f=rvm.sls;h=9ae61f5a45c315797626a834ba8c5bb7992a2a8d;hb=HEAD

    [pdurbin@server1 ~]$ rvm requirements

    Requirements for Linux ( CentOS release 6.2 (Final) )

    NOTE: 'ruby' represents Matz's Ruby Interpreter (MRI) (1.8.X, 1.9.X)
                 This is the *original* / standard Ruby Language Interpreter
          'ree'  represents Ruby Enterprise Edition
          'rbx'  represents Rubinius

    bash >= 4.1 required
    curl is required
    git is required (>= 1.7 for ruby-head)
    patch is required (for 1.8 rubies and some ruby-head's).

    To install rbx and/or Ruby 1.9 head (MRI) (eg. 1.9.2-head),
    then you must install and use rvm 1.8.7 first.

    Additional Dependencies:
    # For Ruby / Ruby HEAD (MRI, Rubinius, & REE), install the following:
      ruby: yum install -y gcc-c++ patch readline readline-devel zlib zlib-devel libyaml-devel libffi-devel openssl-devel make bzip2 autoconf automake libtool bison iconv-devel ## NOTE: For centos >= 5.4 iconv-devel is provided by glibc

    # For JRuby, install the following:
      jruby: yum install -y java

    [pdurbin@server1 ~]$ 

Install rvm

    [pdurbin@server1 ~]$ rvm install 1.9.3
    Fetching yaml-0.1.4.tar.gz to /home/pdurbin/.rvm/archives
      % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                     Dload  Upload   Total   Spent    Left  Speed
    100  460k  100  460k    0     0   298k      0  0:00:01  0:00:01 --:--:--  470k
    Extracting yaml-0.1.4.tar.gz to /home/pdurbin/.rvm/src
    Prepare yaml in /home/pdurbin/.rvm/src/yaml-0.1.4.
    Configuring yaml in /home/pdurbin/.rvm/src/yaml-0.1.4.
    Compiling yaml in /home/pdurbin/.rvm/src/yaml-0.1.4.
    Installing yaml to /home/pdurbin/.rvm/usr
    Installing Ruby from source to: /home/pdurbin/.rvm/rubies/ruby-1.9.3-p194, this may take a while depending on your cpu(s)...

    ruby-1.9.3-p194 - #fetching 
    ruby-1.9.3-p194 - #downloading ruby-1.9.3-p194, this may take a while depending on your connection...
      % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                     Dload  Upload   Total   Spent    Left  Speed
    100 9610k  100 9610k    0     0  1057k      0  0:00:09  0:00:09 --:--:-- 1752k
    ruby-1.9.3-p194 - #extracting ruby-1.9.3-p194 to /home/pdurbin/.rvm/src/ruby-1.9.3-p194
    ruby-1.9.3-p194 - #extracted to /home/pdurbin/.rvm/src/ruby-1.9.3-p194
    ruby-1.9.3-p194 - #configuring 
    ruby-1.9.3-p194 - #compiling 
    ruby-1.9.3-p194 - #installing 
    Retrieving rubygems-1.8.24
      % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                     Dload  Upload   Total   Spent    Left  Speed
    100  371k  100  371k    0     0  1591k      0 --:--:-- --:--:-- --:--:-- 2133k
    Extracting rubygems-1.8.24 ...
    Removing old Rubygems files...
    Installing rubygems-1.8.24 for ruby-1.9.3-p194 ...
    Installation of rubygems completed successfully.
    ruby-1.9.3-p194 - adjusting #shebangs for (gem irb erb ri rdoc testrb rake).
    ruby-1.9.3-p194 - #importing default gemsets (/home/pdurbin/.rvm/gemsets/)
    Install of ruby-1.9.3-p194 - #complete 
    [pdurbin@server1 ~]$ 

Check ruby version

    [pdurbin@server1 ~]$ ruby --version
    ruby 1.9.3p194 (2012-04-20 revision 35410) [x86_64-linux]

