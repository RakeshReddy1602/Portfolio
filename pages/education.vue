<template>
  <section 
    id="education" 
    class="bg-gray-900 text-white py-16 px-4 relative"
  >
    <div class="container mx-auto max-w-4xl">
      <h2 
        class="text-3xl md:text-4xl font-bold text-center mb-16 text-teal-400 animate__animated animate__fadeIn"
      >
        Educational Journey
      </h2>

      <div class="relative">
        <div 
          class="absolute top-0 left-1/2 transform -translate-x-1/2 w-1 bg-teal-500 h-full hidden md:block"
        ></div>

        <div class="space-y-8">
          <div 
            class="flex flex-col md:flex-row items-center md:even:flex-row-reverse group"
          >
            <div 
              class="hidden md:block w-4 h-4 bg-teal-500 rounded-full absolute left-1/2 transform -translate-x-1/2 z-10"
            ></div>

            <div 
              class="w-full md:w-1/2 bg-gray-800 p-6 rounded-lg shadow-md transform transition-all duration-300 hover:scale-[1.02] hover:bg-teal-900/20 animate__animated animate__fadeInUp"
            >
              <div class="flex items-center mb-4">
                <svg 
                  xmlns="http://www.w3.org/2000/svg" 
                  class="h-8 w-8 mr-4 text-teal-400" 
                  fill="none" 
                  viewBox="0 0 24 24" 
                  stroke="currentColor"
                >
                  <path 
                    stroke-linecap="round" 
                    stroke-linejoin="round" 
                    stroke-width="2" 
                    d="M12 14l9-5-9-5-9 5 9 5z" 
                  />
                  <path 
                    stroke-linecap="round" 
                    stroke-linejoin="round" 
                    stroke-width="2" 
                    d="M12 14l9-5-9-5-9 5 9 5zm0 0l2.49 1.494a2 2 0 001.855 0L12 14z" 
                  />
                </svg>
                <h3 class="text-2xl font-semibold text-teal-400">
                  BTech in Software Engineering
                </h3>
              </div>
              <div class="pl-12">
                <p class="text-white italic mb-2 flex items-center">
                  <img 
                    src="/profile.jpg" 
                    alt="ABC University Logo" 
                    class="w-10 h-10 mr-3 rounded-full"
                  />
                  ABC University
                </p>
                <p class="text-gray-300 mb-4">
                  Graduated: 2022
                </p>
                <p class="text-white text-sm">
                  Specialized in advanced software development techniques, 
                  with a focus on cloud computing and machine learning 
                  technologies. Completed multiple industry-aligned projects 
                  demonstrating practical application of theoretical knowledge.
                </p>
              </div>
            </div>
          </div>

 }
          <div 
            class="flex flex-col md:flex-row items-center md:even:flex-row-reverse group"
          >
   
            <div 
              class="hidden md:block w-4 h-4 bg-teal-500 rounded-full absolute left-1/2 transform -translate-x-1/2 z-10"
            ></div>


            <div 
              class="w-full md:w-1/2 bg-gray-800 p-6 rounded-lg shadow-md transform transition-all duration-300 hover:scale-[1.02] hover:bg-teal-900/20 animate__animated animate__fadeInUp"
            >
              <div class="flex items-center mb-4">
                <svg 
                  xmlns="http://www.w3.org/2000/svg" 
                  class="h-8 w-8 mr-4 text-teal-400" 
                  fill="none" 
                  viewBox="0 0 24 24" 
                  stroke="currentColor"
                >
                  <path 
                    stroke-linecap="round" 
                    stroke-linejoin="round" 
                    stroke-width="2" 
                    d="M12 14l9-5-9-5-9 5 9 5z" 
                  />
                  <path 
                    stroke-linecap="round" 
                    stroke-linejoin="round" 
                    stroke-width="2" 
                    d="M12 14l9-5-9-5-9 5 9 5zm0 0l2.49 1.494a2 2 0 001.855 0L12 14z" 
                  />
                </svg>
                <h3 class="text-2xl font-semibold text-teal-400">
                  Diploma in Computer Science
                </h3>
              </div>
              <div class="pl-12">
                <p class="text-white italic mb-2 flex items-center">
                  <img 
                    src="/profile.jpg" 
                    alt="XYZ Polytechnic Logo" 
                    class="w-10 h-10 mr-3 rounded-full"
                  />
                  XYZ Polytechnic
                </p>
                <p class="text-gray-300 mb-4">
                  Graduated: 2018
                </p>
                <p class="text-white text-sm">
                  Completed a comprehensive diploma program in computer 
                  science, gaining foundational skills in programming, 
                  database management, and software development principles.
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<script setup>
import { onMounted } from 'vue'
import 'animate.css'

onMounted(() => {
  // Optional: Intersection Observer for scroll animations
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
/* Custom scrollbar for description overflow */
.overflow-y-auto::-webkit-scrollbar {
  width: 6px;
}
.overflow-y-auto::-webkit-scrollbar-track {
  background: #2d3748;
}
.overflow-y-auto::-webkit-scrollbar-thumb {
  background-color: #4299e1;
  border-radius: 3px;
}
</style>