<template>
  <section 
    ref="skillsSection"
    class="relative bg-gradient-to-b from-gray-900 via-gray-800 to-black text-white py-16 px-4 overflow-hidden"
  >
    <div class="max-w-7xl mx-auto text-center">
      <!-- Animated Title -->
      <h2 
        ref="titleRef"
        class="text-4xl md:text-5xl font-bold text-teal-300 mb-12 tracking-wide opacity-0 transform translate-y-10 transition-all duration-1000 ease-out"
        :class="{ 'opacity-100 translate-y-0': isTitleVisible }"
      >
        My Skills
      </h2>

      <!-- Skills Grid -->
      <div v-for="(category, categoryName) in skillCategories" :key="categoryName" class="mb-16">
        <!-- Category Title -->
        <h3 class="text-2xl font-semibold text-teal-400 mb-6 tracking-wide uppercase">
          {{ categoryName }}
        </h3>

        <!-- Category Grid -->
        <div 
          class="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-5 lg:grid-cols-6 gap-8"
        >
          <div 
            v-for="skill in category" 
            :key="skill.name"
            class="skill-item group relative opacity-0 transform translate-y-10 transition-all duration-700 ease-out"
            :class="{ 'opacity-100 translate-y-0': isSkillVisible(skill.name) }"
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
              <span class="text-lg font-medium text-gray-200">
                {{ skill.name }}
              </span>
            </div>

            <!-- Floating Tooltip -->
            <div 
              class="absolute z-10 bottom-full left-1/2 -translate-x-1/2 mb-2 w-40 bg-gray-800 text-white text-xs px-3 py-2 rounded-lg opacity-0 group-hover:opacity-100 group-hover:translate-y-[-10px] transition-all duration-300"
            >
              {{ skill.description }}
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Subtle Background Animation -->
    <div class="absolute inset-0 z-0">
      <div class="bg-gradient-to-tr from-teal-400/20 via-purple-500/20 to-indigo-500/10 w-[400px] h-[400px] rounded-full blur-[200px] opacity-50 animate-pulse"></div>
      <div class="bg-gradient-to-tr from-purple-400/20 via-pink-500/20 to-indigo-500/10 w-[500px] h-[500px] rounded-full blur-[250px] opacity-30 animate-pulse delay-2000"></div>
    </div>
  </section>
</template>

<script setup>
import { ref, onMounted, onUnmounted } from 'vue';
import profileIcon from '../public/profile.jpg'; // Hardcoded path for all icons

// Skill Categories Definition
const skillCategories = {
  'Programming Languages': [
    { 
      name: 'JavaScript', 
      icon: profileIcon, 
      description: 'Versatile language for front-end and back-end development' 
    },
    { 
      name: 'Python', 
      icon: profileIcon, 
      description: 'Powerful language for data science and backend development' 
    },
    { 
      name: 'TypeScript', 
      icon: profileIcon, 
      description: 'Typed superset of JavaScript for enhanced development' 
    }
  ],
  'Frameworks & Libraries': [
    { 
      name: 'Vue.js', 
      icon: profileIcon, 
      description: 'Progressive JavaScript framework for building UIs' 
    },
    { 
      name: 'Nuxt.js', 
      icon: profileIcon, 
      description: 'Vue.js framework for universal applications' 
    },
    { 
      name: 'React', 
      icon: profileIcon, 
      description: 'Component-based library for building user interfaces' 
    }
  ],
  'Tools & Technologies': [
    { 
      name: 'Node.js', 
      icon: profileIcon, 
      description: 'Runtime environment for server-side JavaScript' 
    },
    { 
      name: 'Docker', 
      icon: profileIcon, 
      description: 'Platform for containerizing applications' 
    },
    { 
      name: 'GitHub', 
      icon: profileIcon, 
      description: 'Version control and collaboration platform' 
    },
    { 
      name: 'Tailwind', 
      icon: profileIcon, 
      description: 'Utility-first CSS framework for rapid UI development' 
    }
  ]
};

// Refs
const skillsSection = ref(null);
const titleRef = ref(null);
const isTitleVisible = ref(false);
const visibleSkills = ref({});

// Visibility Check Function
const checkVisibility = () => {
  if (!skillsSection.value) return;

  // Check title visibility
  const titleRect = titleRef.value.getBoundingClientRect();
  isTitleVisible.value = (
    titleRect.top < window.innerHeight &&
    titleRect.bottom >= 0
  );

  // Check skills visibility
  const skillItems = document.querySelectorAll('.skill-item');
  skillItems.forEach((element) => {
    const skillName = element.querySelector('span').textContent.trim();
    const rect = element.getBoundingClientRect();
    visibleSkills.value[skillName] = (
      rect.top < window.innerHeight &&
      rect.bottom >= 0
    );
  });
};

// Skill Visibility Checker
const isSkillVisible = (skillName) => {
  return visibleSkills.value[skillName];
};

// Event Listeners
onMounted(() => {
  window.addEventListener('scroll', checkVisibility);
  window.addEventListener('resize', checkVisibility);
  checkVisibility();
});

onUnmounted(() => {
  window.removeEventListener('scroll', checkVisibility);
  window.removeEventListener('resize', checkVisibility);
});
</script>

<style scoped>
/* Enhance the animations */
@keyframes pulse {
  0%, 100% { opacity: 0.6; transform: scale(1); }
  50% { opacity: 1; transform: scale(1.1); }
}
</style>
