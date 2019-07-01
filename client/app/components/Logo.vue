<template>
    <div class="logo ph5-l ph3-m">
        <div class="logo db cb flex">
            <nuxt-link to="/" class="logo__body flex items-center">
                <div class="logo__avatar br-100 ba h3 w3 bg-black db db-m mr2"
                     alt="dmix - Dan McGrady"
                     style="background-image:url('http://tachyons io/img/logo jpg')">
                </div>
                <div class="logo__name logo black dib link f2 bc dmix">
                    dmix
                </div>
            </nuxt-link>
        </div>
    </div>
</template>

<style scoped>
.logo {
    margin-top: 1rem;
    margin-right: 5px;

    &__body {
        margin-bottom: 1rem;
    }

    &__avatar {
        background-size: contain;
    }

    &__name {
        display: none;
        line-height: 0.75rem;
        width: 5rem;
        margin: auto;
    }
}

@media (--breakpoint-small) {
    .logo {
        padding: 0 2rem;
    }
}

@media (--breakpoint-not-small) {
    .logo {
        margin-top: 8rem;

        &__name {
            display: block;
        }

        &__body {
            width: 10rem;
        }
    }
}
</style>
