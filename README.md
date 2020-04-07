# RIP in piece DynDNS

DynDNS is no longer free. Don't worry though, [DuckDNS](http://duckdns.org) offers the exact same service.

Now if only there was a simple way to automate the updating of my IP address to my DuckDNS host name. Oh wait -- there is!

# Installation

1. `$ brew tap jzelinskie/duckdns`
2. `$ brew install duckdns`
3. Configure - make a $HOME/.duckdns config file like so:

```bash
DOMAIN="example,example2"
TOKEN="11111111-1111-1111-1111-111111111111"
```
4. Run and register to launch at login
`$ brew services start duckdns`

