# Xcode
echo ; echo '--- Xcode' ; echo
echo 'Installing Xcode Command Line Tools...'
xcode-select --install

# Ruby
echo ; echo '--- Ruby' ; echo
echo 'Updating RubyGems...'
sudo gem update --system

# Jekyll
echo ; read -p 'Install Gem: Jekyll? (y/n) ' answer
case ${answer:0:1} in
  y|Y )
    echo 'Installing Jekyll...'
    sudo gem install jekyll
  ;;
esac

# Homebrew
echo ; echo '--- Homebrew' ; echo
echo 'Installing Homebrew...'
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo ; echo 'Updating Homebrew...'
brew update

echo ; echo '--- Development Packages' ; echo
read -p 'Install Development Packages? (y/n) ' answer
case ${answer:0:1} in
  y|Y )
    # Ack
    echo ; echo 'Installing Ack...'
    brew install ack
    # Node
    echo ; echo 'Installing Node...'
    brew install node
    # GCC
    echo ; echo 'Installing GCC...'
    brew install gcc
    # QT5
    echo ; echo 'Installing QT5...'
    brew install qt5 --with-docs --with-developer --with-d-bus --with-mysql
    echo ; echo 'Upgrading Homebrew Packages...'
    brew upgrade
    # Underscore
    echo ; echo 'Installing Underscore...'
    sudo npm install -g underscore
    # Moment
    echo ; echo 'Installing Moment...'
    sudo npm install -g moment
    echo ; echo 'Updating Node Packages...'
    npm update
  ;;
esac