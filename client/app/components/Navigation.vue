<template>
    <nav class="ph3-l ph3-m">
        <menu class="navigation ma0">
            <div class="pv1"
                 v-for="link in links"
                 :key="link.name">
                <nuxt-link :to="link.path" class="button link black dib w-100 ph3 pv3 f5">
                    <span>{{ link.name }}</span>
                </nuxt-link>
            </div>
        </menu>
    </nav>
</template>

<script lang="ts">
import { Component, Vue, Prop } from 'vue-property-decorator'

@Component
export default class Navigation extends Vue {
    links = [
        {
            name: 'Home',
            path: '/',
        },
        {
            name: 'Blog',
            path: '/blog',
        },
        {
            name: 'About',
            path: '/about',
        },
        {
            name: 'Projects',
            path: '/projects',
        },
    ]
}
</script>

<style scoped>
.navigation {
    padding-top: 0.5rem;
    flex-grow: 1;

    menu > div {
      padding-left: 0.5rem;
      padding-right: 0.5rem;
    }
}

@media (--breakpoint-small) {
    .navigation {
        padding: 0;
        max-width: 175px;
        display: grid;
        grid-template-areas:
           "Home Blog"
           "Projects About";

        .button {
            margin-right: 10px;
        }

        a {
            padding: 0.3rem;
            font-family: var(--serif-family);
            margin-right: 0;
            border: none;
            font-size: 1.3rem;
        }
    }
}

@media (min-width: 480px) and (max-width:650px) {
    .content-logo {
        margin-right: 1rem;

        &__body {
            display: grid;
            grid-template-areas:
               "content-logo__avatar"
               "content-logo__name";
            justify-content: flex-end;
        }

        &__avatar {
            margin-bottom: 30px;
            justify-self: flex-end;
        }

        &__name {
        }
    }

    .navigation {
    }
}

@media (min-width: 380px) and (max-width:900px) {
    .navigation {
        padding-top: 1rem;
        grid-template-areas:
           "Home Blog Projects About";
    }
}

@media (--breakpoint-not-small) {
    .navigation {
    }
}

.logo {
    margin-right: 1.0rem;

    .logo-name {
      color: #111;
    }
}

.navigation {
    /* margin-right: 1.5rem; */
}

.navigation .inactive:hover {
    color: var(--black-80);
}

.navigation .inactive:active {
    color: var(--black-70);
}

.navigation .inactive:focus {
}

.navigation .active {
    color: var(--black-80);
    /* border-left: 3px solid var(--green); */
    border-top-left-radius: 0;
    border-bottom-left-radius: 0;
    border-bottom: none;
}
</style>
