<template lang="pug">
extends WidgetTemplate.pug
block header
  .md-title Cфmядde Michзl
block content
  #twitter-widget-holder
    <html>
      <TwitterFeed/>
    </html>
block actions
</template>

<script>
import Widget from "./Widget.vue";
import TwitterFeed from "./TwitterFeed";

export default {
  extends: Widget,
  name: "ComradeMichel",
  components: {
    TwitterFeed,
  },
};
</script>