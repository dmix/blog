# ---------------------------------------------------------------------------------
# BLOG 
# ---------------------------------------------------------------------------------

# -- Options

DB_PATH=/Users/dmix/.asdf/installs/postgres/10.8
HOME=/Users/dmix
SERVER=./server
CLIENT=./client

# -- Main

dev: dev-server dev-client
test: test-server test-client

# -- Server

dev-server:
	@cd $(SERVER)
	@cargo watch -x 'run'

server-server:
	@cd $(SERVER)
	@cargo run

# -- Client

dev-client:
	@cd $(CLIENT)
	@yarn run dev

server-client:
	@cd $(CLIENT)

test-client:
	@cd $(CLIENT)
	@yarn run test

# -- Helpers

tmux:
	@tmuxp load .tmuxp.yaml

clean:
	@rm .DS_Store; rm **/*/.DS_Store

# -- Database

asdf:
	. $(HOME)/.asdf/asdf.sh
	. $(HOME)/.asdf/completions/asdf.bash

db-src:
	export PATH="\$PATH:~/.asdf/installs/postgres/10.8/bin/"

db-stop:
	@$(DB_PATH)/bin/pg_ctl -D $(DB_PATH)/data stop

db:
	@$(DB_PATH)/bin/pg_ctl -D $(DB_PATH)/data -l logfile start

# -- Dependencies

install-npm:
	@npm update
	@npm install -g @nuxt/typescriptg@^2.8.1
	@npm install -g @nuxtjs/eslint-configg@^0.0.1
	@npm install -g @nuxtjs/eslint-moduleg@^0.0.1
	@npm install -g @typescript-eslint/eslint-pluging@^1.11.0
	@npm install -g @typescript-eslint/parserg@^1.11.0
	@npm install -g @vue/test-utilsg@^1.0.0-beta.27
	@npm install -g avag@^1.0.1
	@npm install -g babel-eslintg@^10.0.1
	@npm install -g browser-envg@^3.2.5
	@npm install -g eslintg@^5.15.1
	@npm install -g eslint-config-prettierg@^4.1.0
	@npm install -g eslint-config-standardg@>=12.0.0
	@npm install -g eslint-plugin-importg@>=2.16.0
	@npm install -g eslint-plugin-jestg@>=22.3.0
	@npm install -g eslint-plugin-nodeg@>=8.0.1
	@npm install -g eslint-plugin-nuxtg@>=0.4.2
	@npm install -g eslint-plugin-prettierg@^3.0.1
	@npm install -g eslint-plugin-promiseg@>=4.0.1
	@npm install -g eslint-plugin-standardg@>=4.0.0
	@npm install -g eslint-plugin-vueg@^5.2.2
	@npm install -g nodemong@^1.18.9
	@npm install -g prettierg@^1.16.4
	@npm install -g require-extension-hooksg@^0.3.3
	@npm install -g require-extension-hooks-babelg@^0.1.1
	@npm install -g require-extension-hooks-vueg@^2.0.0
	@npm install -g vue-class-componentg@^7.1.0
	@npm install -g vue-property-decoratorg@^8.2.1
	@npm install

install-asdf:
	@asdf plugin-add postgres https://github.com/smashedtoatoms/asdf-postgres.git
	@asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
	@bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring
	@asdf install
	@asdf install postgres 10.8

install-rust:
	@rustup default nightly
	@rustup override set nightly

# -- Makefile

.PHONY dev test
.DEFAULT_GOAL := dev
