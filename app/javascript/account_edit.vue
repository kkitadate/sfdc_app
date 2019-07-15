<template>
  <div id="account-show">
    <div v-if="loading" role="status" class="slds-spinner slds-spinner_small">
      <span class="slds-assistive-text">Loading</span>
      <div class="slds-spinner__dot-a"></div>
      <div class="slds-spinner__dot-b"></div>
    </div>
    <form @submit.prevent="saveRecord" style="width:65%">
      <div class="slds-form__row">
        <div class="slds-form__item" role="listitem">
      <div class="slds-form-element slds-form-element_readonly">
        <span class="slds-form-element__label">Id</span>
        <div class="slds-form-element__control">
          <div class="slds-form-element__static">{{ id }}</div>
        </div>
      </div>
        </div>
        <div class="slds-form__item" role="listitem">
      <div class="slds-form-element">
        <label for="name" class="slds-form-element__label">Name</label>
        <div class="slds-form-element__control">
          <input type="text" class="slds-input" id="name" v-model="form.name" />
        </div>
      </div>
        </div>
      </div>
      <button class="slds-button slds-button_brand slds-m-top_medium" type="submit">
        {{ message }}
      </button>
    </form>
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
      message: "Save Record",
      loading: false,
      form: {
        name: "",
      },
      account: null,
    }
  },
  mounted() {
    this.getAccount()
  },
  methods: {
    getAccount() {
    this.loading = true
    Axios.get('api/v1/accounts/' + this.id)
    .then(res => {
      this.account = res.data.account
      this.form.name = this.account.name
      this.loading = false
    })
  },
    saveRecord() {
    }
  }
}
</script>
