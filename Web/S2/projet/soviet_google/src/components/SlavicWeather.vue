<template lang="pug">
extends WidgetTemplate.pug
block header
  .md-title Slдvic Wздthзя
  .md-subhead Best weдtheя яeppфяt deliveяed by the pдяty
block content
  section(v-if="hasError")
    div Impфssible de яécupéяeя les infфяmдtions suя les seяveurs
  section(v-else)
    section(v-if="loading")
      div Entrez le nom d'une ville...
    section(v-else)
      span(class="md-display-1") {{name}}
      p {{ localTime }}
      p {{ temperature }} °C
      img(v-bind:src="weather_icons", alt="soviet weather logo")
block actions
  md-field
    label Nom de la ville
    md-input(v-model="city")
  md-button(v-on:click="getWeatherReport(city)" class="md-raised md-accent") Seдяch
</template>

<script>
import axios from "axios";
import Widget from "./Widget.vue";

export default {
  extends: Widget,
  name: "SlavicWeather",
  data() {
    return {
      name: null,
      localTime: null,
      temperature: null,
      city: null,
      weather_icons: null,
      loading: true,
      hasError: false,
    };
  },
  methods: {
    getWeatherReport: function (city) {
      axios
        .get(
          "http://api.weatherstack.com/current?access_key=ff5c53dcb9672d68e5d347c20def0014&",
          { params: { query: city } }
        )
        .then((response) => {
          if (response.data.success == false) {
            throw new Error(response.data.error.info);
          } else {
            this.name = response.data.location.name;
            this.localTime = response.data.location.localtime;
            this.temperature = response.data.current.temperature;
            this.weather_icons = response.data.current.weather_icons
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
</style>