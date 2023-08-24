GO := go

ci:
	cd ci/ && $(GO) run main.go

.PHONY: ci
