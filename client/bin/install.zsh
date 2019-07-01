#!/usr/bin/env zsh

# ------------------------------------------------------------
# Dev tools installer
# ------------------------------------------------------------

echo "Installing dev tools..."

npm update -g

npx install-peerdeps -g eslint-config-airbnb
npm install -g eslint \
    @nuxt/typescript \
    @nuxtjs/eslint-config \
    @nuxtjs/eslint-module \
    @typescript-eslint/eslint-plugin \
    @typescript-eslint/parser \
    @vue/test-utils \
    ava \
    babel-eslint \
    browser-env \
    eslint-plugin-vue \
    eslint-plugin-jasmine \
    eslint-config-airbnb  \
    eslint-config-airbnb-base  \
    eslint-plugin-import \
    eslint-config-prettier \
    eslint-config-standard \
    eslint-plugin-html \
    eslint-plugin-import \
    eslint-plugin-jest \
    eslint-plugin-node \
    eslint-plugin-nuxt \
    eslint-plugin-prettier \
    eslint-plugin-promise \
    eslint-plugin-standard \
    eslint-plugin-vue \
    nodemon \
    prettier \
    require-extension-hooks \
    require-extension-hooks-babel \
    require-extension-hooks-vue \
    vue-class-component \
    vue-property-decorator

#
# Optional:
#
# npm install -g eslint_d

echo "Done"
