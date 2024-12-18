<template>
   <div class="bg-gray-100">
      <Header class="sticky top-0 z-10" />
      <Bio />
      <Education />
      <Experience />
      <Skills />
      <Projects />
      <ContactMe />
      <Footer />
    </div>
    <slot />
  </template>
  
  <script>
import Experience from '../pages/experience.vue';
import Header from '../pages/header.vue'
import Bio from '../pages/bio.vue';
import Education from '../pages/education.vue';
import Skills from '../pages/skills.vue';
import ContactMe from '../pages/contact-me.vue';
import Footer from '../pages/footer.vue';
import Projects from '../pages/projects.vue';

export default {
    components: {
      Header,
      Bio,
      Education,
      Experience,
      Skills,
      Projects,
      ContactMe,
      Footer
    }
  }
  </script>
  
  <style scoped>
  /* Optional styles for your layout */
  </style>
  