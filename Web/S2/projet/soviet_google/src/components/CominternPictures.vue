<template lang="pug">
extends WidgetTemplate.pug
block header
  .md-title Cфmintзяn Pictuязs
  .md-subhead Whф lздkзd thз pдrty's pictцrзs ?
block content
  section(v-if="hasError")
    div Impфssible de яécupéяeя les infфяmдtions suя les seяveurs
  section(v-else)
    section(v-if="loading")
      div Entrez le nom d'une image à rechercher...
    section#imgSection(v-else)
        div
            img(v-bind:src="search_result", alt="img_search_result")
            img(src=("../assets/ussr.png"), alt="a pretty communist watermark")
block actions
  md-field
    label Nom de l'image
    md-input(v-model="image")
  md-button(v-on:click="getFirstImage(image)" class="md-raised md-accent") Seдяch
</template>

<script>
import axios from "axios";
import Widget from "./Widget.vue";


export default {
  extends: Widget,
  name: "CominternPictures",
  data() {
    return {
      search_result: null,
      loading: true,
      hasError: false,
      image: null,
      server_id: null,
      photo_id: null,
      secret: null,
    };
  },
  methods: {
    getFirstImage: function (image) {
      axios
        .get(
          "https://www.flickr.com/services/rest/?method=flickr.photos.search&api_key=39de77efc545a373b6e504f6196814d1&",
          {
            params: {
              tags: image,
              format: "json",
              nojsoncallback: 1,
            },
          }
        )
        .then((response) => {
          if (response.data.stat == "fail" || response.data.photos.total <= 0) {
            throw new Error("La recherche n'a retourné aucun résultat !");
          } else {
            var photoResponse = response.data.photos.photo[0];
            this.server_id = photoResponse.server;
            this.photo_id = photoResponse.id;
            this.secret = photoResponse.secret;
            this.search_result = `https://live.staticflickr.com/${this.server_id}/${this.photo_id}_${this.secret}.jpg`;
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
img {
  opacity: 0.6;
}
#imgSection > div{
  background-color: red;
  position: relative;
}
#imgSection > div img+img{
    width: 40px;
    height: 40px;
    position: absolute;
    left: 0;
}
</style>