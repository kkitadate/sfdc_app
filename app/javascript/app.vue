<template>
  <div id="app">
    <div class="slds-einstein-header">
      <div class="slds-einstein-header__figure slds-size_1-of-4
        slds-medium-size_3-of-3">
        <p>{{ message }}</p>
      </div>
    </div>
    <div class="slds-card">
      <div class="slds-card__header">
        <router-link to="/" class="slds-button slds-button_outline-brand">
          Home
        </router-link>
        <router-link to="/accounts" class="slds-button slds-button_outline-brand">
          Accounts
        </router-link>
      </div>
      <div class="slds-card__body slds-card__body_inner ">
        <router-view />
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      el: '#app',
      message: "Hello Vue!",
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
