<template>
    <div>
        <h1>Home</h1>

        <article class="lh-copy max-width">
            <h1 class="lh-title mb4">Welcome to the blog</h1>
            <div class="black-80 f5">
                <p>
                  Lorem Ipsum is simply dummy text of the printing andtypesetting industry.
                  Lorem Ipsum has been the
                  <a href="#">industry's standard</a>
                  dummy text ever since the 1500s, when an unknown printer took a galleyof
                  type and scrambled it to make a type specimen book.  ever since the
                  1500s.
                </p>

                <p>
                  Lorem Ipsum is simply dummy text of the printing andtypesetting industry.
                  Lorem Ipsum has been theindustry's standard dummy text ever since the
                  1500s,when an unknown printer took a galley of type andscrambled it to
                  make a
                  <a href="#">type specimen book</a>
                  It has survived not only five centuries, but also the leap intoelectronic
                  typesetting, remaining essentially unchanged.  It waspopularised in the
                  1960s with the release of Letraset sheets containingLorem Ipsum passages,
                  and more recently with desktop publishing.
                </p>

                <PostPreview
                    v-for="post in posts"
                    :key="post.id"
                    :post="post" />

                <nuxt-link to="/blog">View all blog posts -></nuxt-link>
            </div>
        </article>
    </div>
</template>

<script>
// import LayoutFooter from '../components/LayoutFooter.vue'
// import PostPreview from '../components/PostPreview.vue'

export default {
    components: {
        PostPreview: () => import('../components/PostPreview.vue'),
    },

    asyncData() {
        // const { data } = await axios.get(`https://my-api/posts`)
        return {
            posts: [
                {
                    id: 1,
                    title: 'This is my title!',
                    description: 'Helllo this is my long description to fill space',
                },
                {
                    id: 2,
                    title: 'This is my title! 2',
                    description: 'Helllo this is my long description to fill space',
                },
                {
                    id: 3,
                    title: 'This is my title! 3',
                    description: 'Helllo this is my long description to fill space',
                },
            ],
        }
    },

    data() {
        return {
            posts: [],
        }
    },
}
</script>

<style>
.container {
    margin: 0 auto;
    min-height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
    text-align: center;
}

.title {
    font-family: 'Quicksand', 'Source Sans Pro', -apple-system,
        BlinkMacSystemFont, 'Segoe UI', Roboto, 'Helvetica Neue', Arial,
        sans-serif;
    display: block;
    font-weight: 300;
    font-size: 100px;
    color: #35495e;
    letter-spacing: 1px;
}

.subtitle {
    font-weight: 300;
    font-size: 42px;
    color: #526488;
    word-spacing: 5px;
    padding-bottom: 15px;
}

.links {
    padding-top: 15px;
}
</style>
