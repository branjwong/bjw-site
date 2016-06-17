module.exports = function(grunt){

  grunt.initConfig({

// elm: {
//   compile: {
//     files: {
//       'output-dir/': 'path/to/Source.elm',
//       'other-output-dir/': ['path/to/sources/*.elm', 'path/to/more/*.elm']
//     }
//   },
// }



    elm: {
      compile: {
        files: {
          'dist/js/root.js': 'src/pages/*.elm',
          'dist/js/writing.js': 'src/pages/writing/*.elm',
          'dist/js/programming.js': 'src/pages/programming/*.elm',
          'dist/js/teaching.js': 'src/pages/teaching/*.elm'
        }
      }
    }
  });

  grunt.loadNpmTasks('grunt-elm');
  grunt.registerTask('default', ['elm']);

}
