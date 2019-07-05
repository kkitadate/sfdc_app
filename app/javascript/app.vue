<template>
  <div id="app">
    <p>{{ message }}</p>
    <router-link to="/">Home</router-link> |
    <router-link to="/accounts">Accounts</router-link>
  </div>
</template>

<script>
export default {
  data: function () {
    return {
      el: '#app',
      message: "Hello Vue!"
    }
  }
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
