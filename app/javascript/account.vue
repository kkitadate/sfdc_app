<template>
  <div id="accounts">
    <div v-if="loading" role="status" class="slds-spinner slds-spinner_small">
      <span class="slds-assistive-text">Loading</span>
      <div class="slds-spinner__dot-a"></div>
      <div class="slds-spinner__dot-b"></div>
    </div>
    <div v-if="accounts.length > 0">
      <div class="slds-form-element slds-p-top_x-small">
        <label class="slds-form-element__label" for="text-input-id-1">Search</label>
        <div class="slds-form-element__control">
          <input type="text" id="text-input-id-1" placeholder="Account Name"
            class="slds-input" v-model="inputText" />
        </div>
      </div>
      <div class="slds-p-top_small slds-p-left_x-small">
        Count: {{ count }}
      </div>
      <table class="slds-table slds-table_bordered slds-p-top_x-small" role="grid">
        <thead>
          <th>Id</th>
          <th>Name</th>
        </thead>
        <tbody>
          <tr v-for="acc in filteredAccounts">
            <td>{{ acc.id }}</td>
            <td>
              <router-link v-bind:to="{ path: 'accounts/' + acc.id }">
                {{ acc.name }}
              </router-link>
            </td>
          </tr>
        </tbody>
      </table>
    </div>
    <div v-else>
      <div class="slds-p-top_medium">
        
      </div>
    </div>
  </div>
</template>

<script>
import Axios from 'axios'

export default {
  data() {
    return {
      el: '#accounts',
      message: "Get List View",
      accounts: {},
      loading: false,
      inputText: "",
      count: 0,
    }
  },
  mounted() {
    this.getAccounts()
  },
  computed: {
    filteredAccounts() {
      let accs = this.accounts.filter(acc => {
        return acc.name.includes(this.inputText)
      })
      this.count = accs.length    
      return accs
    }
  },
  methods: {
    getAccounts() {
      this.loading = true
      Axios.get('/api/v1/accounts', { params: {} })
      .then( (res) => {
        this.accounts = res.data.accounts
        this.loading = false
      })
    }
  }
}
</script>
