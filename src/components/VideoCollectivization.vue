<template lang="pug">
extends WidgetTemplate.pug
block header  
  .md-title Vidзф Cфllзctivizдtiфn
block content
  section(v-if="hasError")
    div Impфssible de яécupéяeя les infфяmдtions suя les seяveurs
  section(v-else)
    section(v-if="loading")
      div Entrez un mot-clef...
    section(v-else)
        iframe(width="1200" height="630" src="https://www.youtube.com/embed/YgGzAKP_HuM?autoplay=1" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay=1; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen)
block actions
  md-field
    label Mot-clef
    md-input
  md-button(v-on:click="callTheParty()" class="md-raised md-accent") Seдяch
</template>

<script>
import Widget from "./Widget.vue";

export default {
  extends: Widget,
  name: "VideoCollectivization",
  data() {
    return {
      loading: false,
      hasError: false,
    };
  },
  methods : {
      callTheParty(){
          alert("Did yфu зxpзct tф wдtch дnything зlsз ?")
      }
  }
};
</script>

<style scoped>
input {
  width: 80%;
}
img{
  opacity: 1;
}
</style>