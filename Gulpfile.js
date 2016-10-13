var gulp  = require('gulp')
var shell = require('gulp-shell')
var watch = require('gulp-watch')
 
gulp.task('compile', shell.task([
  'make clean',
  'make',
  './program'
]))


gulp.task('watch', function() {
    gulp.watch('./*.c', ['compile']);
});



gulp.task('default', function() {
    gulp.watch('./*.c', ['compile']);
});