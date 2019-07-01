<template>
    <form class="search black-20 hover-black-40 pointer">
        <fieldset class="cf bn ma0 pa0">
            <div class="cf">
                <label class="clip" for="email-address">Search</label>
                <div class="search__icon f4">
                    <i class="fa fa-search" aria-hidden="true" />
                </div>
                <input
                    id="#search-input"
                    class="search__input f6 f5-l fl dib input-reset bn black-80 bg-white pa3 ph5 mv1 outline-0 pointer lh-solid w-100 br0"
                    autocomplete="off"
                    name="search"
                    placeholder="Search blog, categories, etc..."
                    type="text"
                    value="" />
            </div>
        </fieldset>
    </form>
</template>

<script lang="ts">
import { Component, Vue, Prop } from 'vue-property-decorator'

@Component
export default class Search extends Vue {
}
</script>

<style>
.search {
}


@media (--breakpoint-large) {
  .search {
      padding: 1.5rem 0;
  }

  .search__form {
    border-radius: 5px;
  }
}

.search__form  {
  background: var(--search-bg);
  border: 1px solid var(--search-border);
  margin: 1px;

  .search__icon {
      position: relative;
      top: 19px;
      color: var(--search-icon);
      float: left;
      width: 4rem;
      text-align: center;
      height: 40px;
      margin-top: -10px;
      padding-top: 8px;
      border-right: 1px solid var(--search-icon-border);
      margin-right: -100px;
  }

  ::-webkit-input-placeholder {
      color: var(--search);
  }

  .search__input {
      padding-left: 5.5rem;

      &:focus::-webkit-input-placeholder {
          color: var(--search-placeholder--focus);
      }
  }

  &:hover {
      margin: 0;
      border: 2px solid var(--search-border--hover);

      ::-webkit-input-placeholder {
          color: var(--search-placeholder--hover);
      }

      .search__icon {
          border-right: 1px solid var(--search-icon-border--hover);
          color:var(--search-icon--hover);
      }
  }

  &:active {
      ::-webkit-input-placeholder {
          color: var(--search-placeholder--active);
      }

      .search__icon {
          border-right: 1px solid var(--search-icon-border--active);
          color: var(--search-icon--active);
      }
  }
}
</style>
