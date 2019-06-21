# RIP in piece DynDNS

DynDNS is no longer free. Don't worry though, [DuckDNS](http://duckdns.org) offers the exact same service.

Now if only there was a simple way to automate the updating of my IP address to my DuckDNS host name. Oh wait -- there is!

# installation

1. `$ brew tap jzelinskie/duckdns`
2. `$ brew install duckdns`
3. `$ ln -sfv /usr/local/opt/duckdns/*.plist ~/Library/LaunchAgents/`
4. `$ launchctl load ~/Library/LaunchAgents/homebrew.mxcl.duckdns.plist`
5. Make a $HOME/.duckdns config file like so:

```bash
DOMAIN="example"
TOKEN="11111111-1111-1111-1111-111111111111"
```
