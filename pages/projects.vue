<template>
  <section 
    id="projects" 
    class="bg-gray-900 text-white py-16 px-4"
  >
    <div class="container mx-auto">
      <h2 
        class="text-3xl md:text-4xl font-bold text-center mb-12 text-teal-400 animate__animated animate__fadeIn"
      >
        Projects
      </h2>

      <div 
        class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8"
      >
        <div 
          v-for="(project, index) in projects" 
          :key="index"
          class="bg-gray-800 rounded-lg shadow-lg overflow-hidden transform transition-all duration-300 hover:scale-105 hover:shadow-xl animate__animated animate__fadeInUp"
        >
          <div class="relative overflow-hidden">
            <img 
              :src="project.image" 
              :alt="project.name"
              class="w-full h-48 object-cover transition-transform duration-300 hover:scale-110"
            />
          </div>

          <div class="p-6">
            <h3 
              class="text-xl font-bold mb-3 text-teal-400"
            >
              {{ project.name }}
            </h3>

            <p 
              class="text-white mb-4 text-sm"
            >
              {{ project.description }}
            </p>

            <div class="flex flex-wrap gap-2 mb-4">
              <span 
                v-for="(tech, techIndex) in project.technologies" 
                :key="techIndex"
                class="text-xs px-2 py-1 bg-teal-900/30 text-teal-300 rounded-full"
              >
                {{ tech }}
              </span>
            </div>

            <a 
              :href="project.link" 
              target="_blank" 
              rel="noopener noreferrer"
              class="inline-block px-4 py-2 bg-teal-600 text-white rounded-lg hover:bg-teal-700 transition-colors duration-300"
            >
              View Project
            </a>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<script setup>
import { ref } from 'vue'
import 'animate.css'

const projects = ref([
  {
    name: 'E-Commerce Platform',
    description: 'Full-stack e-commerce application with real-time inventory management and payment integration.',
    technologies: ['Vue.js', 'Nuxt.js', 'Tailwind CSS', 'Node.js', 'MongoDB'],
    link: '#',
    image: '/profile.jpg'
  },
  {
    name: 'AI Chatbot',
    description: 'Machine learning-powered chatbot with natural language processing capabilities.',
    technologies: ['Python', 'TensorFlow', 'Flask', 'React'],
    link: '#',
    image: '/profile.jpg'
  },
  {
    name: 'Social Media Dashboard',
    description: 'Comprehensive analytics dashboard for tracking social media performance.',
    technologies: ['React', 'Chart.js', 'Redux', 'Express.js'],
    link: '#',
    image: '/profile.jpg'
  },
  {
    name: 'Travel Booking App',
    description: 'Mobile-responsive travel booking application with real-time availability.',
    technologies: ['Vue.js', 'Vuex', 'Tailwind', 'Firebase'],
    link: '#',
    image: '/profile.jpg'
  },
  {
    name: 'Cryptocurrency Tracker',
    description: 'Real-time cryptocurrency price tracking and portfolio management tool.',
    technologies: ['React', 'CoinGecko API', 'Chart.js', 'Styled Components'],
    link: '#',
    image: '/profile.jpg'
  },
  {
    name: 'Personal Blog Platform',
    description: 'Headless CMS-powered blog with serverless backend and dynamic content.',
    technologies: ['Nuxt.js', 'Strapi', 'GraphQL', 'Netlify'],
    link: '#',
    image: '/profile.jpg'
  }
])
</script>