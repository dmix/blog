<template>
    <div>
        <nuxt />
    </div>
</template>

<style>
/* __________________________________________________________________________*/
/* Base
/* __________________________________________________________________________*/

body, html {
    height: 100%;
}

@media (--breakpoint-not-small) {
    body, html {
        background: var(--bg);
    }
}

.admin-nav {
    position: absolute;
    top: 10px;
    right: 10px;
    min-width: 200px;
    min-height: 300px;
    text-align: right;

    a {
        color: var(--bg);
    }

    &:hover {
        a {
            color: var(--black-50);
        }
    }
}

.layout__content {
    background-color: var(--secondary-bg);
    border-radius: 5px;
    border: 1px solid #f1f1f1;
}

.max-width {
    max-width: var(--max-width);
}

menu {
    list-style-type: disc;
    /* -webkit-display: block; */
    /* -webkit-margin-before: 0em; */
    /* -webkit-margin-after: 0em; */
    /* -webkit-margin-start: 0px; */
    /* -webkit-margin-end: 0px; */
    /* -webkit-padding-start: 0px; */
}


/* __________________________________________________________________________*/
/* Colors
/* __________________________________________________________________________*/

.b--layout {
    border-color: rgba(0,0,0,0.035);
}

/* __________________________________________________________________________*/
/* Grid
/* __________________________________________________________________________*/

main {
}

.layout__sidebar {
    height: 100%;
    margin-left: -1px;
}

.layout__subnav {
    min-height: 1000px;
    margin-right:-1px
}

@media (--breakpoint-small) {
    .layout__sidebar {
        display: flex;
        margin: 2rem 0;

        &-logo {
            margin-right: 5px;
        }

        &-nav {
            padding-top: 0.5rem;
            flex-grow: 1;

            menu > div {
              padding-left: 0.5rem;
              padding-right: 0.5rem;
            }
        }
    }
}

@media (--breakpoint-not-small) {
    .layout__sidebar {
        &-logo {
        }

        &-nav {
        }
    }
}

@media (--breakpoint-large) {
    .layout__sidebar {
        min-height: 1200px;
    }
}

/* main { */
/*   margin-left: 300px; */
/*   min-height: 800px; */
/* } */
/* .layout__sidebar { */
/*     position: fixed; */
/* } */
</style>
