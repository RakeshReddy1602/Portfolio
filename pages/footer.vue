<template>
  <footer class="bg-gradient-to-br from-gray-900 via-gray-800 to-gray-900 py-12 px-6 text-white">
    <div class="max-w-4xl mx-auto grid md:grid-cols-3 gap-8">
      <!-- Contact Section -->
      <div>
        <h4 class="text-2xl font-bold text-teal-400 mb-6">Contact</h4>
        <ul class="space-y-4 text-gray-300">
          <li class="flex items-center hover:text-teal-400 transition-colors">
            <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 mr-3 text-teal-500" fill="none" viewBox="0 0 24 24" stroke="currentColor">
              <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z" />
            </svg>
            developer@example.com
          </li>
          <li class="flex items-center hover:text-teal-400 transition-colors">
            <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 mr-3 text-teal-500" fill="none" viewBox="0 0 24 24" stroke="currentColor">
              <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M3 5h12M9 3v2m1.048 9.5A18.022 18.022 0 016.412 9m6.088 9h3m-3-8a3 3 0 01-3-3V5a3 3 0 116 0v6a3 3 0 01-3 3z" />
            </svg>
            +1 (123) 456-7890
          </li>
        </ul>
      </div>

      <!-- Social Media -->
      <div>
        <h4 class="text-2xl font-bold text-teal-400 mb-6">Connect</h4>
        <div class="flex space-x-6 justify-center">
          <button 
            class="text-gray-300 hover:text-teal-400 transition-all transform hover:scale-110"
            @click="openSocialMedia('linkedin')"
          >
            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
              <path d="M16 8a6 6 0 0 1 6 6v7h-4v-7a2 2 0 0 0-2-2 2 2 0 0 0-2 2v7h-4v-7a6 6 0 0 1 6-6z"></path>
              <rect x="2" y="9" width="4" height="12"></rect>
              <circle cx="4" cy="4" r="2"></circle>
            </svg>
          </button>
          <button 
            class="text-gray-300 hover:text-teal-400 transition-all transform hover:scale-110"
            @click="openSocialMedia('twitter')"
          >
            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
              <path d="M23 3a10.9 10.9 0 0 1-3.14 1.53 4.48 4.48 0 0 0-7.86 3v1A10.66 10.66 0 0 1 3 4s-4 9 5 13a11.64 11.64 0 0 1-7 2c9 5 20 0 20-11.5a4.5 4.5 0 0 0-.08-.83A7.72 7.72 0 0 0 23 3z"></path>
            </svg>
          </button>
          <button 
            class="text-gray-300 hover:text-teal-400 transition-all transform hover:scale-110"
            @click="openSocialMedia('instagram')"
          >
            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
              <rect x="2" y="2" width="20" height="20" rx="5" ry="5"></rect>
              <path d="M16 11.37A4 4 0 1 1 12.63 8 4 4 0 0 1 16 11.37z"></path>
              <line x1="17.5" y1="6.5" x2="17.51" y2="6.5"></line>
            </svg>
          </button>
        </div>
      </div>
    </div>

    <!-- Gradient Divider -->
    <div class="h-1 bg-gradient-to-r from-teal-500 via-purple-500 to-gray-800 opacity-50 my-8 max-w-4xl mx-auto"></div>

    <!-- Copyright Section -->
    <div class="text-center text-gray-400 mt-8">
      <p>© {{ currentYear }} Your Name. All Rights Reserved.</p>
      <p class="text-sm mt-2 text-gray-500">
        Designed with ❤️ using Nuxt.js & Tailwind CSS
      </p>
    </div>
  </footer>
</template>

<script>
export default {
  methods: {
    openSocialMedia(platform) {
      switch(platform) {
        case 'linkedin':
          console.log('Open LinkedIn Profile');
          break;
        case 'twitter':
          console.log('Open Twitter Profile');
          break;
        case 'instagram':
          console.log('Open Instagram Profile');
          break;
      }
    }
  },
  computed: {
    currentYear() {
      return new Date().getFullYear();
    }
  }
}
</script>
