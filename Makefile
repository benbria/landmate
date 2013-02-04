default: work

.PHONY: work
work:
	@if which foreman ; \
		then foreman start ; \
		else node bin/runDevServer.js ; \
	fi

.PHONY: go
go:
	@if which foreman ; \
		then NODE_ENV=production foreman start ; \
		else NODE_ENV=production npm start ; \
	fi
