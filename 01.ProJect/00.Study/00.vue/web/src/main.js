import { createApp } from 'vue'
import App from './App.vue'
import router from './router';
import common from './views/common.js'
import compInput from "./components/compInput.vue"

const app = createApp(App);
app.use(router);
app.use(common);

app.component('compInput',compInput);

app.mount('#app');