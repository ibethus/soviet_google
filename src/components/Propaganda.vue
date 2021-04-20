<template lang="pug">
extends WidgetTemplate.pug
block header
  .md-title Pяфpдgдndд
  .md-subhead Frзsh дnd trustдble nзws
  section(v-if="hasError")
    div Impфssible de яécupéяeя les infфяmдtions suя les seяveurs
  section(v-else)
    section(v-if="loading")
      div Entrez un mot-clef...
    section(v-else)
      .md-layout
        .md-layout-item(
          v-for="(article, index) in articles.slice(0, 2)",
          :key="index"
        )
          span.md-subheading {{ article.title }}
          a(v-bind:href="article.url", target="_blank")
            img(v-bind:src="article.urlToImage", alt="search_result-image")
    .md-layout
      .md-layout-item(
        v-for="(article, index) in articles.slice(2, 4)",
        :key="index"
      )
        span.md-subheading {{ article.title }}
          a(v-bind:href="article.url", target="_blank")
            img(v-bind:src="article.urlToImage", alt="search_result-image")
    .md-layout
      .md-layout-item(
        v-for="(article, index) in articles.slice(4, 5)",
        :key="index"
      )
        span.md-subheading {{ article.title }}
          a(v-bind:href="article.url", target="_blank")
            img(v-bind:src="article.urlToImage", alt="search_result-image")

block actions
  md-field
    label Mot-clef
    md-input(v-model="newsSearch")
  md-button.md-raised.md-accent(v-on:click="getPropaganda(newsSearch)") Seдяch
</template>

<script>
import axios from "axios";
import Widget from "./Widget.vue";

export default {
  extends: Widget,
  name: "Propaganda",
  data() {
    return {
      articles: [],
      title: null,
      newsSearch: null,
      hasError: null,
      loading: null,
    };
  },
  methods: {
    getPropaganda: function (newsSearch) {
      axios
        .get(`https://newsapi.org/v2/everything?q=${newsSearch}`, {
          params: {
            language: "fr",
            sortBy: "popularity",
          },
          headers: {
            "X-Api-Key": "46dcc26e67554398b3f97d5e89e7d678",
          },
        })
        .then((response) => {
          if (response.data.status != "ok") {
            throw new Error(response.data.error.info);
          } else {
            this.articles = response.data.articles;
            this.hasError = false;
            this.loading = false;
          }
        })
        .catch((error) => {
          this.hasError = true;
          alert("Blyдt ! \n" + error);
        });
    },
  },
};
</script>

<style>
input {
  width: 80%;
}

.md-layout-item {
  margin: 1rem;
}
.md-layout-item {
  text-align: left;
}
</style>