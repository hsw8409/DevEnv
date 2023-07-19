<template>
    <h1>PostDetail</h1>
    <p>{{ $route.params.link }}</p>

  </template>


<script>
export default {

    created() {
      //this.$router.push({ path: '/' });

        let title = this.$route.params.link;

        console.log("title >> ",title);
        
        let titleSplit = title.split("::");

        let goUrl = "./"+titleSplit[0]+"/"+titleSplit[1];

        console.log(goUrl);
        //return;
        //window.location.href("https://google.com");
        //window.location.replace("https://google.com");
        //window.location.replace(goUrl);

        //this.$router.push({ path: '/testpage1' });
        //this.$router.push({ path: '@/views/testpage1.vue' });
        this.$router.push(goUrl);
        //this.$router.push('./views/testpage1');
        //this.$router.push(goUrl);
    } 
  
   
}
</script>