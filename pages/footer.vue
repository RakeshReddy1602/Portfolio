<template>
  <footer class="bg-gradient-to-br from-gray-900 via-gray-800 to-gray-900 py-12 px-6 text-white">
    <!-- Gradient Divider -->
    <div class="h-1 bg-gradient-to-r from-teal-500 via-purple-500 to-gray-800 opacity-50 my-8 max-w-4xl mx-auto"></div>

    <!-- Copyright Section -->
    <div class="text-center text-gray-400 mt-8">
      <p>© {{ currentYear }} {{ name }}. All Rights Reserved.</p>
      <p class="text-sm mt-2 text-gray-500">
        Designed with ❤️ using Nuxt.js & Tailwind CSS
      </p>
    </div>
  </footer>
</template>

<script setup>
import details from '../details/details.json';
const linkedinUrl = ref('');
const email =  ref('');
const instagramUrl = ref('');
const currentYear = ref('');
const githubUrl = ref('');
const name = ref('');
onMounted(() => {
  currentYear.value = getCurrentYear();
  linkedinUrl.value = details["linkedinUrl"];
  email.value = details["email"];
  instagramUrl.value = details["instagramUrl"];
  githubUrl.value = details["githubUrl"];
  name.value = details["fullName"];
})


/*************  ✨ Codeium Command ⭐  *************/
/**
 * Returns the current year as a four-digit number.
 * 
 * @returns {number} The current year.
 */

/******  b117a884-6215-46f6-9a8c-de6bd3b5e8e3  *******/
function getCurrentYear() {
  return new Date().getFullYear();
}
</script>
