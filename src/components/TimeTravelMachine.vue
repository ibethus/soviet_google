<template lang="pug">
extends WidgetTemplate.pug
block header
  .md-title Timз Tядvзlзя
block content
  p Cuяязnt timз : {{ time }}
</template>

<script>
import Widget from "./Widget.vue";

export default {
  extends: Widget,
  name: "TimeTravelMachine",
  data() {
    return {
      time: null,
    };
  },
  methods: {
    updateTime: function () {
      var date = new Date();
      this.time = date.toLocaleString();
      setTimeout(this.updateTime, 1000);
    },
  },
  mounted(){
      this.updateTime();
  }
};
</script>

<style scoped>
.md-card-content p{
    font-size: 1.1rem !important;
}
</style>
