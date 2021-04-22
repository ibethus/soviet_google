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
      @saveConfiguration="saveConfiguration"
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
      storedWidgets: [
        {
          name: "SlavicWeather",
          component: SlavicWeather,
        },
        {
          name: "CominternPictures",
          component: CominternPictures,
        },
        {
          name: "Propaganda",
          component: Propaganda,
        },
        {
          name: "ComradeMichel",
          component: ComradeMichel,
        },
        {
          name: "TimeTravelMachine",
          component: TimeTravelMachine,
        },
        {
          name: "VideoCollectivization",
          component: VideoCollectivization,
        },
      ],
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
    getContrastYIQ(couleurFond) {
      let root = document.documentElement;
      couleurFond = couleurFond.replace("#", "");
      var r = parseInt(couleurFond.substr(0, 2), 16);
      var g = parseInt(couleurFond.substr(2, 2), 16);
      var b = parseInt(couleurFond.substr(4, 2), 16);
      var contraste = (r * 299 + g * 587 + b * 114) / 1000;
      contraste >= 128
        ? root.style.setProperty("--fontColor", "#000000")
        : root.style.setProperty("--fontColor", "#ffffff");
    },
    /* Méthode permettant l'enregistrement dans le local storage */
    saveConfiguration() {
      let root = document.documentElement;
      const parsedWidgets = JSON.stringify(this.widgets);
      localStorage.setItem("widgets", parsedWidgets);
      localStorage.choosenColor = root.style.getPropertyValue("--color");
      localStorage.fontColor = root.style.getPropertyValue("--fontColor");
      alert("Les données ont bien été sauvegardées");
    },
  },
  mounted() {
    /* Lors de la création de la vue, on vérifie dans le local storage si des informations avaient été enregistrées */
    if (localStorage.getItem("widgets")) {
      try {
        /* Si les informations sont bien présentes, on recréer les widgets enregistrés */
        let parsedWidgets = JSON.parse(localStorage.getItem("widgets"));
        console.log("Lecture des widgets enregistrés : " + (parsedWidgets.length-1).toString());

        parsedWidgets.forEach((parsedW) => {
          this.storedWidgets.forEach((storedW) => {
            if (parsedW.name == storedW.name) {
              console.log(" Succès: " + parsedW.name);
              this.widgets.push(storedW["component"]);
            }
          });
        });

        /* On vérifie également que les couleurs ont bien été stockées, et on les réutilise */
        let root = document.documentElement;
        if (localStorage.choosenColor) {
          root.style.setProperty("--color", localStorage.choosenColor);
          console.log(
            "La couleur a bien été chargée: " + localStorage.choosenColor
          );
        }
        if (localStorage.fontColor) {
          root.style.setProperty("--fontColor", localStorage.fontColor);
        }
      } catch (e) {
        /* Si les données sont corrompues, on les supprime du localStorage */
        localStorage.removeItem("widgets");
        alert("Les données sauvegardées sont corrompues");
      }
    }
  },
};
</script>

<style>
.page-container > .md-content.md-theme-default {
  background-color: #303030;
}
:root {
  --color: "";
  --fontColor: "#000000";
}

.md-card.md-theme-default.md-with-hover.drag-draggable {
  background-color: var(--color);
  color: var(--fontColor);
}
</style>
