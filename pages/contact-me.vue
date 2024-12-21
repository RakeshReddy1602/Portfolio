<template>
  <section
    id="contact"
    class="bg-gradient-to-br from-gray-900 via-gray-800 to-gray-900 py-16 px-6 text-white">
    <div class="max-w-4xl mx-auto grid md:grid-cols-2 gap-12">
      <!-- Contact Form -->
      <div>
        <h2 class="text-4xl font-bold text-teal-400 mb-8 text-center md:text-left">
          Contact Me
        </h2>
        <form @submit.prevent="submitForm" class="space-y-6">
          <div>
            <label htmlFor="name" class="block mb-2 text-gray-300">Name</label>
            <input 
              type="text" 
              id="name" 
              v-model="name"
              required
              class="w-full px-4 py-3 bg-gray-800 border-2 border-teal-600 rounded-lg text-white focus:outline-none focus:ring-2 focus:ring-teal-500 transition-all duration-300"
              placeholder="Your Name"
            />
          </div>
          
          <div>
            <label htmlFor="email" class="block mb-2 text-gray-300">Email</label>
            <input 
              type="email" 
              id="email" 
              v-model="senderEmail"
              required
              class="w-full px-4 py-3 bg-gray-800 border-2 border-teal-600 rounded-lg text-white focus:outline-none focus:ring-2 focus:ring-teal-500 transition-all duration-300"
              placeholder="your.email@example.com"
            />
          </div>
          
          <div>
            <label htmlFor="message" class="block mb-2 text-gray-300">Message</label>
            <textarea 
              id="message" 
              v-model="message"
              required
              rows="5"
              class="w-full px-4 py-3 bg-gray-800 border-2 border-teal-600 rounded-lg text-white focus:outline-none focus:ring-2 focus:ring-teal-500 transition-all duration-300"
              placeholder="Your message..."
            ></textarea>
          </div>
          
          <button 
            type="submit" 
            class="w-full bg-teal-500 text-white py-3 rounded-lg hover:bg-teal-600 transition-colors duration-300 font-semibold"
          >
            Send Message
          </button>
        </form>
      </div>
      
      <!-- Contact Details -->
      <div>
        <h3 class="text-2xl font-bold text-teal-400 mb-6 text-center md:text-left">
          Get in Touch
        </h3>
        <div class="space-y-6">
          <div class="flex items-center space-x-4 bg-gray-800 p-4 rounded-lg">
            <div class="bg-teal-500 text-white p-3 rounded-full">
              <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z" />
              </svg>
            </div>
            <div class="flex-grow">
              <p class="text-white">{{ email }}</p>
            </div>
            <button 
              @click="openEmailClient"
              class="bg-teal-500 text-white px-4 py-2 rounded-lg hover:bg-teal-600 transition-colors duration-300"
            >
              Email Me
            </button>
          </div>
          
          <a :href="linkedinUrl" target="_blank">
            <div class="flex items-center space-x-4 bg-gray-800 p-4 rounded-lg">
            <div class="bg-teal-500 text-white p-3 rounded-full">
              <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
              <path d="M16 8a6 6 0 0 1 6 6v7h-4v-7a2 2 0 0 0-2-2 2 2 0 0 0-2 2v7h-4v-7a6 6 0 0 1 6-6z"></path>
              <rect x="2" y="9" width="4" height="12"></rect>
              <circle cx="4" cy="4" r="2"></circle>
            </svg>
            </div>
            <div>
              <p>Linkedin</p>
            </div>
          </div>
          </a>
          <a :href="githubUrl" target="_blank">
            <div class="flex items-center space-x-4 bg-gray-800 p-4 rounded-lg">
            <div class="bg-teal-500 text-white p-3 rounded-full">
              <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
             <path d="M12 2C6.48 2 2 6.48 2 12c0 4.41 3.5 8.05 8.03 8.92.59.11.8-.26.8-.57 0-.28-.01-1.03-.01-1.9-3.28.71-3.97-1.59-3.97-1.59-.53-1.35-1.3-1.71-1.3-1.71-1.06-.72.08-.71.08-.71 1.17-.08 2.29 1.08 2.29 1.08 1.04 1.78 2.71 1.26 3.36.97.1-.76.41-1.26.75-1.55-2.66-.3-5.46-1.3-5.46-5.82 0-1.28.45-2.33 1.18-3.15-.12-.3-.51-1.53.11-3.19 0 0 1.01-.32 3.32 1.18a11.46 11.46 0 0 1 3.03-.41c1.02 0 2.05.14 3.03.41 2.31-1.5 3.32-1.18 3.32-1.18.63 1.66.23 2.89.11 3.19.73.82 1.18 1.87 1.18 3.15 0 4.52-2.8 5.52-5.46 5.82.43.38.81 1.14.81 2.29 0 1.66-.01 3.06-.01 3.47 0 .31.2.69.82.58A8.03 8.03 0 0 0 22 12c0-5.52-4.48-10-10-10z"></path>
            </svg>
            </div>
            <div>
              <p>GitHub</p>
            </div>
          </div>
          </a>
          <a :href="instagramUrl" target="_blank">
            <div class="flex items-center space-x-4 bg-gray-800 p-4 rounded-lg">
            <div class="bg-teal-500 text-white p-3 rounded-full">
              <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
              <rect x="2" y="2" width="20" height="20" rx="5" ry="5"></rect>
              <path d="M16 11.37A4 4 0 1 1 12.63 8 4 4 0 0 1 16 11.37z"></path>
              <line x1="17.5" y1="6.5" x2="17.51" y2="6.5"></line>
            </svg>
            </div>
            <div>
              <p>Instagram</p>
            </div>
          </div>
          </a>
        </div>
      </div>
    </div>
  </section>
</template>

<script setup>
import details from '../details/details.json';
const linkedinUrl = ref('');
const email =  ref('');
const instagramUrl = ref('');
const githubUrl = ref('');
const senderEmail = ref('');

onMounted(() => {
  linkedinUrl.value = details["linkedinUrl"];
  email.value = details["email"];
  instagramUrl.value = details["instagramUrl"];
  githubUrl.value = details["githubUrl"];
})
   function submitForm() {
    
    }
    function openEmailClient() {
      // This method will open the default email client
      const subject = 'Contact from Portfolio Website';
      const body = 'Hello,\n\nI would like to get in touch with you.';

      // Construct mailto link
      const mailtoLink = `mailto:${email.value}?subject=${encodeURIComponent(subject)}&body=${encodeURIComponent(body)}`;
      
      // Open default email client
      window.location.href = mailtoLink;
    }
</script>