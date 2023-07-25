<template>
    <h1>Body</h1>
    <p>{{ $route.params.link }}</p>

  </template>


<script>
function loadView (view) {
  return () => import(`@/${view}`)
}

export default {

    created() {

        let vLink = this.$route.params.link;

        console.log("vLink >> ",vLink);
        
        let vSplit = vLink.split("::");

        let goUrl = "./"+vSplit[0]+"/"+vSplit[1];

        console.log(goUrl);
 
        console.log(vSplit[0]);
        console.log(vSplit[1]);

        //this.$router.removeRoute({ path: "/"+vSplit[1], component: loadView(vSplit[0]+"/"+vSplit[1]) });
        this.$router.addRoute({ path: "/"+vSplit[1], component: loadView(vSplit[0]+"/"+vSplit[1]) });
        this.$router.push(goUrl);

    } 
    
  
   
}
</script>