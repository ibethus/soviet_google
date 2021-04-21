<template>
  <div class="page-container">
    <SwitchDisplay
      @addWidgetSlavic="addSlavicWeather"
      @addCominternPictures="addCominternPictures"
      @addComradeMichel="addComradeMichel"
      @addPropaganda="addPropaganda"
      @addTimeTravel="addTimeTravel"
      @addVideoCollectivization="addVideoCollectivization"
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
import InputColorPicker from 'vue-native-color-picker';

const WidgetTemplate = {
  template: Widget.template,
};

export default {
  name: "App",
  data() {
    return {
      widgets: [WidgetTemplate],
      color : "#ff0000"
    };
  },  
  components: {
    SwitchDisplay,
    InputColorPicker

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
    addVideoCollectivization(){
      this.widgets.push(VideoCollectivization);
    },
    deleteWidget(index) {
      this.widgets.splice(index, 1);
    },
  },
};
</script>

<style lang="scss">
@import "./assets/style.css";
@import "~vue-material/dist/theme/engine";
@include md-register-theme(
  "default",
  (
    primary: #ff0000,
    accent: #ff0000,
    theme: light,
  )
);
@import "~vue-material/dist/theme/all";
</style>
