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
        'dist/js/home.js': 'src/pages/home.elm',
        'dist/js/writing.js': 'src/pages/writing.elm',
        'dist/js/teaching.js': 'src/pages/teaching.elm',
        'dist/js/programming.js': 'src/pages/programming.elm',
        'dist/js/writing/what-i-am-doing-with-my-life.js': 'src/pages/writing/what-i-am-doing-with-my-life.elm',
        'dist/js/writing/cross-game.js': 'src/pages/writing/cross-game.elm'
      }
    }
  }

});

grunt.loadNpmTasks('grunt-elm');

grunt.registerTask('speak', function(){
  console.log("I'm speaking.");

});

grunt.registerTask('yell', function(){
  console.log("I'm yelling.");
});

grunt.registerTask('default', ['elm']);

}