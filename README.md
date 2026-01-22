WEDOS module for Caddy
===========================

This package contains a DNS provider module for [Caddy](https://github.com/caddyserver/caddy). It can be used to manage DNS records with [Wedos](https://www.wedos.com/).

## Caddy module name

```
dns.providers.wedos
```

## Building using `xcaddy`

To build Caddy with this module, use the following command:

```aiignore
xcaddy build --with github.com/caddyserver/dnsproviders/wedos
```

## Config examples

To use this module for the ACME DNS challenge, [configure the ACME issuer in your Caddy JSON](https://caddyserver.com/docs/json/apps/tls/automation/policies/issuer/acme/) like so:

```json
{
	"module": "acme",
	"challenges": {
		"dns": {
			"provider": {
				"name": "wedos",
				"username": "{env.WEDOS_USERNAME}",
                "password": "{env.WEDOS_PASSWORD}"
			}
		}
	}
}
```

or with the Caddyfile:

```
# globally
{
	acme_dns wedos {
		# username "YOUR_WEDOS_USERNAME"
		# password "YOUR_WEDOS_PASSWORD"
		# OR
		username {$WEDOS_USERNAME}
		password {$WEDOS_PASSWORD}
	}
}

# Replace 'example.com' with a domain you own and want to manage via Wedos
example.com {
	respond "Hello, Caddy with Wedos!"
}
```
