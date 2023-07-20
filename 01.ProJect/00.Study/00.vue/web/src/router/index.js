import { createWebHistory, createRouter } from "vue-router";
import Main from "@/views/Main.vue";
import PostDetail from "@/views/body.vue";

let viewsArr = ["Main","PostDetail"];

let viewsUrl = [
  {
    name : "Main"
  , url : "views/Main"
  },
  {
    name : "Body"
  , url : "views/body"
  },  
];


function loadView (view) {
  return () => import(`@/${view}`)
}

const routes = [
{
    path: "/",
    name: viewsUrl[0].name,
    component: loadView(viewsUrl[0].url),
    //component : import(viewsUrl[0])
    //component : import('@/views/Main')
},
{
    path: "/:link",
    name: viewsUrl[1].name,
    component: loadView(viewsUrl[1].url),
},  
];



const router = createRouter({
  history: createWebHistory(),
  routes,
});


export default router;