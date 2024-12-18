<template>
  <section class="bg-gradient-to-br from-gray-900 via-gray-800 to-gray-900 py-16 px-6 text-white">
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
              v-model="email"
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
              <p class="text-gray-300">Email</p>
              <p class="text-white">developer@example.com</p>
            </div>
            <button 
              @click="openEmailClient"
              class="bg-teal-500 text-white px-4 py-2 rounded-lg hover:bg-teal-600 transition-colors duration-300"
            >
              Email Me
            </button>
          </div>
          
          <div class="flex items-center space-x-4 bg-gray-800 p-4 rounded-lg">
            <div class="bg-teal-500 text-white p-3 rounded-full">
              <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M3 5h12M9 3v2m1.048 9.5A18.022 18.022 0 016.412 9m6.088 9h3m-3-8a3 3 0 01-3-3V5a3 3 0 116 0v6a3 3 0 01-3 3z" />
              </svg>
            </div>
            <div>
              <p class="text-gray-300">Phone</p>
              <p class="text-white">+1 (123) 456-7890</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<script>
export default {
  data() {
    return {
      name: '',
      email: '',
      message: ''
    }
  },
  methods: {
    submitForm() {
      // Implement form submission logic
      console.log('Form Submitted', {
        name: this.name,
        email: this.email,
        message: this.message
      });
      
      // Reset form after submission
      this.name = '';
      this.email = '';
      this.message = '';
    },
    openEmailClient() {
      // This method will open the default email client
      const email = 'developer@example.com';
      const subject = 'Contact from Portfolio Website';
      const body = 'Hello,\n\nI would like to get in touch with you.';

      // Construct mailto link
      const mailtoLink = `mailto:${email}?subject=${encodeURIComponent(subject)}&body=${encodeURIComponent(body)}`;
      
      // Open default email client
      window.location.href = mailtoLink;
    }
  }
}
</script>