import { createApp } from 'vue'
import App from './App.vue'
import PrimeVue from "primevue/config";
import Aura from '@primevue/themes/aura';

const app = createApp(App);

app.use(PrimeVue, {
    theme: {
        preset: Aura,
    },
});

import Toast from 'primevue/toast';
app.component("Toast", Toast);

import ToastService from 'primevue/toastservice';
app.use(ToastService);

app.mount('#app');