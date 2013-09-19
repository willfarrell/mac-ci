# Mac mini Continuous Intergration Server
*Interviewee: Of course I have my own CI server, what seasoned developer doesn't?*

## Requirements
- 1 x [Mac mini](https://www.apple.com/mac-mini/) ($600 - $1,500) *2.6GHz Quad-Core i7, 16GB RAM, 1TB Fusion Drive*
- 1 x Apple Mini DisplayPort to VGA Adapter ($29) *If planning to not connect to a monitor*
- 1 x Resistor *If planning to not connect to a monitor*
- 1 x [VMware Fusion](http://www.vmware.com/products/fusion/overview.html) ($50) or [VMWare Fusion Professional](http://www.vmware.com/products/fusion-professional/) ($129)

## Setup

1. Create the user `Jenkins`.
2. Setup dot files. Run `.osx` script top optimize setting for performance, fork from [mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles).

3. Install Xcode.
  1. Install Xcode from the Mac App Store.
  2. Open Xcode.
  3. Open the Preferences window (`Cmd-,`).
  4. Go to the Downloads tab.
  5. Install the Command Line Tools.

4. Clean up OS UI
 1. Set background to soild colour.
```applescript
osascript -e 'set desktopImage to POSIX file "/Library/Desktop Pictures/Solid Colors/Solid Gray Light.png"
tell application "Finder"
    set desktop picture to desktopImage
end tell'
```
 2. Remove uneed dock items
 
 
4. Install [boxen](http://boxen.github.com/) `https://github.com/boxen/our-boxen` or use [brew cask](https://github.com/phinze/homebrew-cask).

```bash
# Setup folders
sudo mkdir -p /opt/boxen
sudo chown ${USER}:staff /opt/boxen

# Clone repo
git clone https://github.com/boxen/our-boxen /opt/boxen/repo
cd /opt/boxen/repo
git remote rm origin

# Add browsers include to Puppetfile
echo 'github "browsers"    "0.0.1", :repo => "willfarrell/puppet-browsers"' >> Puppetfile

# Run boxen bootstrap
script/boxen --no-fde

# Run `boxen --env` in new tab
echo "Run `boxen --env` in new tab"
```

5. Install [Browsers and Virtual Machines](https://github.com/willfarrell/Browsers)
```bash
#boxen browsers
```
## Setup Jenkins
TODO
```bash
boxen jenkins
```

## [Mac mini CI](https://github.com/angular/ci.angularjs.org)
Shell scripts and configuration files used by the Google AngularJS Team. [Video](https://www.youtube.com/watch?v=BNpV7npURhE) [Slides](https://docs.google.com/presentation/d/1-j264F0Q8k3NzionQspx7fhKd2E8XPkIKItxz2qhN28)

## To Do
- Write script to auto install dot files and setup computer best for jenkins (focus on security and speed).
 - remove background image
 - remove useless icons from dock (leave Finder, Browser)
 
- Write script to install all browsers (bowen).