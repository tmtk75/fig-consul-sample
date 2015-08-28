b2d_host=192.168.59.103

nodes:
	curl -XGET "$(b2d_host):8500/v1/catalog/nodes" | jq .

kv-get:
	curl -XGET "$(b2d_host):8500/v1/kv/hello?recurse" | jq .

kv-set:
	curl -XPUT -d world $(b2d_host):8500/v1/kv/hello; echo
	curl -XPUT -d 1234 $(b2d_host):8500/v1/kv/hello/foobar; echo

fig: .e/bin/fig
.e/bin/fig: .e/bin/pip2.7
	.e/bin/pip2.7 install fig
.e/bin/pip2.7:
	virtualenv .e

