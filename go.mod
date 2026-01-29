module github.com/caddy-dns/wedos

go 1.25.5

require (
	github.com/caddyserver/caddy/v2 v2.10.2
	github.com/libdns/wedos v1.0.2
)

// For local testing
//replace github.com/libdns/wedos => /home/maty/Projects/libdns-wedos
//replace github.com/caddy-dns/wedos => /home/maty/Projects/caddy-dns-wedos
