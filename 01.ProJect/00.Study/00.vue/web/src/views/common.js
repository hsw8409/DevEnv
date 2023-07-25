import { ref } from 'vue'

const methods = {
    isEmpty: (value) => {
        alert(value);
        return;
    },
}

export default {
    install(app){
        app.config.globalProperties.$isEmpty = methods.isEmpty

        app.config.globalProperties.$isCall = function (data){
             alert(data);

        }
    },
}
