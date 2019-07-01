# blog

> A high-performance blog/content platform with commenting, voting, and a
> simple admin interface for writing markdown content and administrating
> comments.

> A Vue SSR front-end built with Nuxt.js

> Rust backend API built with https://rocket.rs/ and http://diesel.rs/

> More documentation to come as the project is fleshed out.

# Installation

Requirements:

- postgres 10+, see server directory for configuration
- rust nightly
- node 12

The make file (and soon bin/install) script will install development
dependencies for you including eslint.

```Bash

git clone https://github.com/dmix/blog
cd blog
make install
```

# Running & Development

Currently two servers need to be started. First the node-based Nuxt.js server
for running the frontend Vue.js client powered by SSR. Second the Rust backend
API powered by Rocket. Finally a Postgres 10 database needs to be running.

Starting development servers:

```Bash
make dev
```

Start client server (includes livereload and hot reloading in the browser)
```Bash
cd client
yarn run dev
```

Start API server (automatically restarts on filechange)
```Bash
cd server
cargo watch -x 'run'
```

For detailed explanation on how things work, checkout
[Nuxt.js docs](https://nuxtjs.org) and
[Rocket docs](https://rocket.rs/v0.4/guide/getting-started/).

# Licence

MIT
