<template>
  <a class="twitter-timeline" data-lang="fr" data-width="500" data-height="300" data-theme="dark" href="https://twitter.com/MichelBillaud?ref_src=twsrc%5Etfw"/>
</template>

<script>
export default {
  created() {
    let twitterFeed = document.createElement("script");
    twitterFeed.async=true;
    twitterFeed.setAttribute("src", "https://platform.twitter.com/widgets.js");
    document.head.appendChild(twitterFeed);
  }
};
</script>