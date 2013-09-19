# https://discussions.apple.com/thread/3909964?start=0&tstart=0
tell application "System Events"
	set dockPlistFile to property list file "~/Library/Preferences/com.apple.dock.plist"
		tell dockPlistFile
			tell property list item "persistent-apps"
				set appTileItems to value of (every property list item whose value of property list item "tile-data"'s property list item "file-label" is not "Finder")
				set its value to appTileItems
			end tell
		end tell
end tell
tell application "Dock" to quit