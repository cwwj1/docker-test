<template>
  <div id="app">
    <img class="image" alt="dear" src="https://i.ibb.co/hDY0jHp/Wechat-IMG56.jpg">
    <HelloWorld msg="HJH"/>
  </div>
</template>

<script>
import HelloWorld from './components/HelloWorld.vue'

export default {
  name: 'App',
  components: {
    HelloWorld
  }
}
</script>

<style>
body {
  margin: 0;
  padding: 0;
}
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  background: pink;
  width: 100vw;
}
.image {
  width: 50%;
}
</style>
