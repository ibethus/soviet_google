<template>
  <md-toolbar>
    <h3 class="md-title" style="flex: 1">Sфviзt Gффglз</h3>

    <InputColorPicker v-model="color" @change="callUpdateColor" />

    <md-button
      class="md-icon-button md-raised md-accent"
      v-on:click="callWeather"
    >
      <md-icon :md-src="require('../assets/weather.svg')"></md-icon>
    </md-button>

    <md-button
      class="md-icon-button md-raised md-accent"
      v-on:click="callCominternPictures"
    >
      <md-icon>image</md-icon>
    </md-button>

    <md-button
      class="md-icon-button md-raised md-accent"
      v-on:click="callComradeMichel"
    >
      <md-icon :md-src="require('../assets/twitter.svg')"></md-icon>
    </md-button>

    <md-button
      class="md-icon-button md-raised md-accent"
      v-on:click="callPropaganda"
    >
      <md-icon>feed</md-icon>
    </md-button>

    <md-button
      class="md-icon-button md-raised md-accent"
      v-on:click="callTimeTravel"
    >
      <md-icon>schedule</md-icon>
    </md-button>

    <md-button
      class="md-icon-button md-raised md-accent"
      v-on:click="callVideoCollectivization"
    >
      <md-icon>smart_display</md-icon>
    </md-button>
  </md-toolbar>
</template>

<script>
import InputColorPicker from "vue-native-color-picker";

export default {
  name: "SwitchDisplay",
  data() {
    return {
      color: null,
    };
  },
  methods: {
    callWeather() {
      this.$emit("addWidgetSlavic");
    },
    callCominternPictures() {
      this.$emit("addCominternPictures");
    },
    callComradeMichel() {
      this.$emit("addComradeMichel");
    },
    callPropaganda() {
      this.$emit("addPropaganda");
    },
    callTimeTravel() {
      this.$emit("addTimeTravel");
    },
    callVideoCollectivization() {
      this.$emit("addVideoCollectivization");
    },
    callUpdateColor() {
      this.$emit("updateColor", this.color);
    },
  },
  components: {
    InputColorPicker,
  },
};
</script>

<style>
button {
  margin-left: 1% !important;
  margin-right: 1% !important;
  margin-bottom: 1% !important;
}
</style>


