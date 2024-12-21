<template>
  <section 
    id="bio" 
    class="bg-gray-900 text-white py-16 px-4"
  >
    <div class="container mx-auto flex flex-col md:flex-row items-center justify-center">
      <!-- Profile Photo -->
      <div 
        class="mb-8 md:mb-0 md:mr-12 w-72 h-72 md:w-72 md:h-72 flex-shrink-0 relative group"
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
        {{ data["fullName"]}}
        </h1>
        <h2 
          class="text-xl md:text-2xl font-semibold mb-4 text-teal-500 animate__animated animate__fadeInUp animate__delay-1s"
        >
          {{ data["designation"] }}
        </h2>
        
        <p 
          class="text-white leading-relaxed mb-4 animate__animated animate__fadeInUp animate__delay-2s"
        >
        {{ data["bioDescription"] }}
      </p>
      </div>
    </div>
  </section>
</template>

<script setup>
import { onMounted } from 'vue';
import 'animate.css';
import details from '../details/details.json';
const data = ref({});
onMounted(() => {
  data.value = details;
  // Optional: Add Intersection Observer for animations
  const observer = new IntersectionObserver((entries) => {
    entries.forEach(entry => {
      if (entry.isIntersecting) {
        entry.target.classList.add('animate__animated', 'animate__fadeInUp');
      }
    });
  }, { threshold: 0.1 });

  document.querySelectorAll('.animate__animated').forEach((el) => {
    observer.observe(el);
  });
});

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