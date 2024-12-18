<template>
  <section class="bg-gradient-to-br from-gray-900 via-gray-800 to-gray-900 py-16 px-6">
    <div class="max-w-4xl mx-auto">
      <h2 class="text-4xl font-bold text-white mb-12 text-center">
        Professional Experience
      </h2>
      
      <div 
        v-for="(exp, index) in experiences" 
        :key="exp.company"
        class="mb-12 bg-gray-800 bg-opacity-70 rounded-xl p-6 shadow-lg border border-gray-700 transition-all duration-500 ease-in-out"
      >
        <div class="mb-4">
          <h3 class="text-2xl font-bold text-teal-400">
            {{ exp.company }} - {{ exp.role }}
          </h3>
          <div class="text-gray-400 text-sm">
            {{ exp.duration }} | {{ exp.location }}
          </div>
        </div>
        
        <ul class="text-white space-y-2 pl-4 list-disc">
          <li 
            v-for="(achievement, achieveIndex) in exp.achievements" 
            :key="achieveIndex" 
            class="text-gray-200"
          >
            {{ achievement }}
          </li>
        </ul>
      </div>

      <!-- Subtle Gradient Divider -->
      <div class="h-1 bg-gradient-to-r from-teal-500 via-purple-500 to-gray-800 opacity-50 my-8"></div>
    </div>
  </section>
</template>

<script>
export default {
  data() {
    return {
      experiences: [
        {
          company: 'TechCorp Innovations',
          role: 'Frontend Developer',
          duration: 'Jan 2020 - Dec 2022',
          location: 'San Francisco, CA',
          achievements: [
            'Designed and implemented responsive user interfaces using Vue.js',
            'Utilized TailwindCSS for efficient and modern styling',
            'Collaborated with cross-functional teams to enhance user experience',
            'Optimized application performance through strategic front-end improvements'
          ]
        },
        {
          company: 'CodeMasters Inc.',
          role: 'Software Engineer',
          duration: 'Jan 2023 - Present',
          location: 'Remote',
          achievements: [
            'Developed scalable backend APIs using Node.js',
            'Integrated backend services with frontend applications',
            'Implemented Docker containerization for application deployment',
            'Streamlined CI/CD pipelines to improve development workflow'
          ]
        }
      ]
    }
  }
}
</script>