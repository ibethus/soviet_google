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
      color : "#ff0000"
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
    addVideoCollectivization(){
      this.widgets.push(VideoCollectivization);
    },
    deleteWidget(index) {
      this.widgets.splice(index, 1);
    },
    updateColor(value){
      let root = document.documentElement;
      root.style.setProperty("--color", value);
    }
  }
};
</script>

<style>
.page-container > .md-content.md-theme-default{
  background-color: #303030;
}
:root {
--color : "";
}

.md-card.md-theme-default.md-with-hover.drag-draggable{
  background-color: var(--color);
}

</style>
