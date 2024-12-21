<template>
  <section 
    id="skills"
    ref="skillsSection"
    class="relative bg-gradient-to-b from-gray-900 via-gray-800 to-black text-white px-4 overflow-hidden"
  >
    <div class="max-w-7xl mx-auto text-center">
      <!-- Animated Title -->
      <h2 
        ref="titleRef"
        class="text-4xl md:text-5xl font-bold text-teal-300 mb-16 tracking-wide transform translate-y-10 transition-all duration-1000 ease-out"      >
        Technical Proficiencies
      </h2>
      <!-- <div>{{ skillCategories }}</div> -->
      <!-- Skills Grid -->
      <div v-for="(category, categoryName) in skillCategories" :key="categoryName" class="mb-16">
        <!-- Category Title -->
        <h3 class="text-2xl  font-semibold text-teal-400 tracking-wide uppercase">
          {{ categoryName }}
        </h3>

        <!-- Category Grid -->
        <div 
          class="grid grid-cols-2 sm:grid-cols-4 md:grid-cols-6 lg:grid-cols-7 gap-8"
        >
          <div 
            v-for="skill in category" 
            :key="skill.name"
            class="skill-item group relative transform translate-y-10 transition-all duration-700 ease-out"
          >
            <!-- Skill Card -->
            <div 
              class="relative p-6 bg-gray-800/50 rounded-xl flex flex-col items-center justify-center text-center shadow-lg shadow-teal-500/20 border border-gray-700 group-hover:shadow-teal-400/30 transition-all duration-300 ease-in-out transform group-hover:-translate-y-2"
            >
              <img 
                :src="skill.icon" 
                alt="Skill Icon"
                class="w-16 h-16 mb-4 rounded-full border-2 border-teal-400 shadow-md"
              />
              <span class="text-lg truncate font-medium text-gray-200">
                {{ skill.name }}
              </span>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Subtle Background Animation -->
    <div class="absolute inset-0 z-0">
      <div class="bg-gradient-to-tr from-teal-400/20 via-purple-500/20 to-indigo-500/10 w-[400px] h-[400px] rounded-full blur-[200px] animate-pulse"></div>
      <div class="bg-gradient-to-tr from-purple-400/20 via-pink-500/20 to-indigo-500/10 w-[500px] h-[500px] rounded-full blur-[250px] animate-pulse delay-2000"></div>
    </div>
  </section>
</template>

<script setup>
import { ref, onMounted, onUnmounted } from 'vue';
import details from '../details/details.json';
// Skill Categories Definition
const skillCategories= ref({})

onMounted(() => {
  skillCategories.value = details["skills"];
})

</script>

<style scoped>
/* Enhance the animations */
@keyframes pulse {
  0%, 100% { opacity: 0.6; transform: scale(1); }
  50% { opacity: 1; transform: scale(1.1); }
}
</style>
