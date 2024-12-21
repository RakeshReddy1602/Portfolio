<template>
  <header class="bg-gray-900 text-white shadow-md py-6">
    <div class="container mx-auto flex justify-between items-center px-4">
      <!-- Logo -->
      <div 
        class="text-3xl font-bold text-white hover:text-cyan-400 transition-colors cursor-pointer"
      >
       {{ fullName }}
      </div>

      <!-- Mobile Menu Toggle -->
      <button 
        @click="toggleMobileMenu"
        class="md:hidden text-white hover:text-cyan-400 transition-colors"
      >
        <svg 
          v-if="!isMobileMenuOpen" 
          xmlns="http://www.w3.org/2000/svg" 
          class="h-6 w-6" 
          fill="none" 
          viewBox="0 0 24 24" 
          stroke="currentColor"
        >
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16" />
        </svg>
        <svg 
          v-else 
          xmlns="http://www.w3.org/2000/svg" 
          class="h-6 w-6" 
          fill="none" 
          viewBox="0 0 24 24" 
          stroke="currentColor"
        >
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
        </svg>
      </button>

      <!-- Desktop Navigation -->
      <nav class="hidden md:flex space-x-6">
        <NuxtLink 
          v-for="link in navLinks" 
          :key="link.href"
          :to="link.href"
          class="text-white hover:text-cyan-400 transition-all duration-300 ease-in-out"
        >
          {{ link.name }}
        </NuxtLink>
      </nav>

      <!-- Mobile Navigation Dropdown -->
      <div 
        v-if="isMobileMenuOpen" 
        class="md:hidden absolute top-full left-0 w-full bg-gray-900 z-50"
      >
        <nav class="flex flex-col items-center space-y-4 py-4">
          <NuxtLink 
            v-for="link in navLinks" 
            :key="link.href"
            :to="link.href"
            @click="toggleMobileMenu"
            class="text-white hover:text-cyan-400 transition-all duration-300 ease-in-out"
          >
            {{ link.name }}
          </NuxtLink>
        </nav>
      </div>
    </div>
  </header>
</template>

<script setup>
import { ref } from 'vue'
import details from '../details/details.json';

const fullName = ref('');
const isMobileMenuOpen = ref(false)

const navLinks = [
  { name: 'Bio', href: '/#bio' },
  { name: 'Education', href: '/#education' },
  { name: 'Experience', href: '/#experience' },
  { name: 'Skills', href: '/#skills' },
  { name: 'Projects', href: '/#projects' },
  { name: 'Contact', href: '/#contact' }
]

onMounted(() => {
  fullName.value = details["fullName"];
})

const toggleMobileMenu = () => {
  isMobileMenuOpen.value = !isMobileMenuOpen.value
}
</script>

<style scoped>
/* Custom smooth scroll behavior */
html {
  scroll-behavior: smooth;
}
</style>

