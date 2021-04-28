<template lang="pug">
include WidgetTemplate.pug
</template>

<script>
export default {
  name: "Widget",
};
</script>

<style>
h3 {
  margin: 40px 0 0;
}
ul {
  list-style-type: none;
  padding: 0;
}
li {
  display: inline-block;
  margin: 0 10px;
}
a {
  color: #42b983;
}
.md-card {
  width: 320px;
  margin: 4px;
  display: inline-block;
  vertical-align: top;
  text-align: center;
  --topPos: 10;
  --leftPos: 10;
}
.md-icon-button.md-raised.md-accent {
  margin-top: 0.5rem;
}
</style>