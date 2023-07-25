import { createWebHistory, createRouter } from "vue-router";
import Main from "@/views/Main.vue";
import Body from "@/views/body.vue";

import testpage1 from "@/views/testpage1.vue";
import testpage2 from "@/views/testpage2.vue";
import testpage3 from "@/views/testpage3.vue";

let viewsArr = ["Main","Body"];

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
{
  path: "/testpage1",
  name: testpage1,
  component: testpage1,
}, 
{
  path: "/testpage2",
  name: testpage2,
  component: testpage2,
}, 
{
  path: "/testpage3",
  name: testpage3,
  component: testpage3,
}, 
];



const router = createRouter({
  history: createWebHistory(),
  routes,
});


export default router;