import { createApp } from 'vue'
import App from './App.vue'
import router from './router';
import common from './views/common.js'

const app = createApp(App);
app.use(router);
app.use(common);
app.mount('#app');