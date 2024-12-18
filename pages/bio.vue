<template>
  <section 
    id="bio" 
    class="bg-gray-900 text-white py-16 px-4"
  >
    <div class="container mx-auto flex flex-col md:flex-row items-center justify-center">
      <!-- Profile Photo -->
      <div 
        class="mb-8 md:mb-0 md:mr-12 w-40 h-40 md:w-48 md:h-48 flex-shrink-0 relative group"
      >
        <img 
          src="/profile.jpg" 
          alt="John Doe Profile"
          class="w-full h-full object-cover rounded-full border-4 border-teal-500 transition-transform duration-300 ease-in-out group-hover:scale-105 group-hover:shadow-lg"
        />
      </div>

      <!-- Bio Text -->
      <div class="text-center md:text-left max-w-2xl">
        <h1 
          class="text-3xl md:text-4xl font-bold mb-2 text-teal-400 animate__animated animate__fadeInUp"
        >
          John Doe
        </h1>
        <h2 
          class="text-xl md:text-2xl font-semibold mb-4 text-teal-500 animate__animated animate__fadeInUp animate__delay-1s"
        >
          Full Stack Developer & Technology Enthusiast
        </h2>
        
        <p 
          class="text-white leading-relaxed mb-4 animate__animated animate__fadeInUp animate__delay-2s"
        >
          I'm a passionate full-stack developer with a keen eye for creating innovative and efficient web solutions. With over 5 years of experience in modern web technologies, I specialize in building scalable and user-friendly applications that solve real-world problems.
        </p>
        
        <p 
          class="text-white leading-relaxed animate__animated animate__fadeInUp animate__delay-3s"
        >
          My expertise spans across the entire web development stack, with a strong focus on JavaScript ecosystems like Vue.js, Nuxt.js, React, and Node.js. I'm passionate about creating seamless user experiences and leveraging cutting-edge technologies to drive digital innovation.
        </p>
      </div>
    </div>
  </section>
</template>

<script setup>
import { onMounted } from 'vue'
import 'animate.css'

onMounted(() => {
  // Optional: Additional scroll animations or intersection observers can be added here
  const observer = new IntersectionObserver((entries) => {
    entries.forEach(entry => {
      if (entry.isIntersecting) {
        entry.target.classList.add('animate__animated', 'animate__fadeInUp')
      }
    })
  }, { threshold: 0.1 })
})
</script>

<style scoped>
/* Custom scroll behavior and additional animations */
.animate__delay-1s {
  animation-delay: 0.5s !important;
}

.animate__delay-2s {
  animation-delay: 1s !important;
}

.animate__delay-3s {
  animation-delay: 1.5s !important;
}
</style>