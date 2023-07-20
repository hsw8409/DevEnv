<template>
  <div id="nav">
      <router-link to="/">Home</router-link><p></p>
      <router-link to="/views::testpage1">test1</router-link><p></p>
      <router-link to="/views::testpage2">test2</router-link>

  </div>


  <p>여기가 바뀌나요?</p>
  <router-view />
</template>