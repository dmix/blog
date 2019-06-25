module.exports = {
    root: true,
    env: {
        browser: true,
        node: true
    },
    parserOptions: {
        parser: '@typescript-eslint/parser',
    },
    extends: [
        '@nuxtjs',
        'plugin:nuxt/recommended',
        'plugin:prettier/recommended',
        'prettier',
        'prettier/vue'
    ],

    plugins: [
        '@typescript-eslint',
        'prettier',
    ],
    rules: {
        '@typescript-eslint/no-unused-vars': 'error'
    }
}
