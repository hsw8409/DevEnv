import { createWebHistory, createRouter } from "vue-router";
import Main from "@/views/Main.vue";
import PostDetail from "@/views/PostDetail.vue";
import testpage1 from "@/views/testpage1.vue";

let viewsArr = ["Main","PostDetail"];

let viewsUrl = ["@/views/Main"];

let viewsUrl2 = ["views/Main"];

function loadView (view) {
  return () => import(`@/views/${view}`)
}

function loadView2 (view) {
  return () => import(`@/${view}`)
}

const routes = [
  {
    path: "/",
    name: "Main",
    component: loadView2(viewsUrl2[0]),
    //component : import(viewsUrl[0])
    //component : import('@/views/Main')
  },
  {
    path: "/:link",
    name: "PostDetail",
    component: loadView(viewsArr[1]),
  },   
];

const router = createRouter({
  history: createWebHistory(),
  routes,
});

export default router;