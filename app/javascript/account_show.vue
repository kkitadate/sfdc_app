<template>
  <div id="account-show">
    <div v-if="loading" role="status" class="slds-spinner slds-spinner_small">
      <span class="slds-assistive-text">Loading</span>
      <div class="slds-spinner__dot-a"></div>
      <div class="slds-spinner__dot-b"></div>
    </div>
    <table class="slds-table slds-table_bordered slds-m-top_medium" role="grid">
      <thead>
        <th>Id</th>
        <th>Name</th>
      </thead>
      <tbody>
        <tr v-if="account">
          <td>{{ account.id }}</td>
          <td>{{ account.name }}</td>
        </tr>
      </tbody>
    </table>
    <router-link class="slds-button slds-button_brand slds-m-top_medium"
                  v-bind:to="{ path: '/accounts/' + id + '/edit'}">
      {{ message }}
    </router-link>
  </div>
</template>

<script>
import Axios from 'axios'

export default {
  props: {
    id: Number
  },
  data() {
    return {
      el: '#account-show',
      message: "Edit Record",
      loading: false,
      inputText: "",
      account: null,
    }
  },
  mounted() {
    this.loading = true
    Axios.get('api/v1/accounts/' + this.id)
    .then(res => {
      this.account = res.data.account
      this.loading = false
    })
  },
  methods: {
    getAccount() {
      
    }
  }
}
</script>
