<template>
  <div class="page-container">
    <SwitchDisplay
      @addWidgetSlavic="addSlavicWeather"
      @addCominternPictures="addCominternPictures"
      @addComradeMichel="addComradeMichel"
      @addPropaganda="addPropaganda"
      @addTimeTravel="addTimeTravel"
      @addVideoCollectivization="addVideoCollectivization"
      @updateColor="updateColor"
    />
    <md-content>
      <component
        v-for="(component, index) in widgets"
        :key="index"
        :is="component"
        v-on:delete-widget="deleteWidget(index)"
      />
    </md-content>
  </div>
</template>

<script>
import SwitchDisplay from "./components/SwitchDisplay";
import Widget from "./components/Widget";
import SlavicWeather from "./components/SlavicWeather";
import CominternPictures from "./components/CominternPictures";
import ComradeMichel from "./components/ComradeMichel";
import Propaganda from "./components/Propaganda";
import TimeTravelMachine from "./components/TimeTravelMachine";
import VideoCollectivization from "./components/VideoCollectivization";

const WidgetTemplate = {
  template: Widget.template,
};

export default {
  name: "App",
  data() {
    return {
      widgets: [WidgetTemplate],
      color: "#ff0000",
    };
  },
  components: {
    SwitchDisplay,
  },
  methods: {
    addSlavicWeather() {
      this.widgets.push(SlavicWeather);
    },
    addCominternPictures() {
      this.widgets.push(CominternPictures);
    },
    addComradeMichel() {
      this.widgets.push(ComradeMichel);
    },
    addPropaganda() {
      this.widgets.push(Propaganda);
    },
    addTimeTravel() {
      this.widgets.push(TimeTravelMachine);
    },
    addVideoCollectivization() {
      this.widgets.push(VideoCollectivization);
    },
    deleteWidget(index) {
      this.widgets.splice(index, 1);
    },
    updateColor(value) {
      let root = document.documentElement;
      root.style.setProperty("--color", value);
      this.getContrastYIQ(value);
    },
    /*Script permettant de calculer le contraste de l'arrière-plan des widgets. On ajuste la couleur de la police en fonction.
    Source: https://24ways.org/2010/calculating-color-contrast*/
    getContrastYIQ(hexcolor) {
      let root = document.documentElement;
      hexcolor = hexcolor.replace("#", "");
      var r = parseInt(hexcolor.substr(0, 2), 16);
      var g = parseInt(hexcolor.substr(2, 2), 16);
      var b = parseInt(hexcolor.substr(4, 2), 16);
      var yiq = (r * 299 + g * 587 + b * 114) / 1000;
      yiq >= 128 ? root.style.setProperty("--fontColor", "#000000") : root.style.setProperty("--fontColor", "#ffffff");
    },
  },
};
</script>

<style>
.page-container > .md-content.md-theme-default {
  background-color: #303030;
}
:root {
  --color: "";
  --fontColor: "black"
}

.md-card.md-theme-default.md-with-hover.drag-draggable {
  background-color: var(--color);
  color: var(--fontColor);
}
</style>
