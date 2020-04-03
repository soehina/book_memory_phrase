// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require activestorage
//= require jquery
//= require jquery.turbolinks
//= require rails-ujs
//= require_tree .

function loaded(){
    var loading = document.querySelector('#back');
    loading.classList.add('loaded');
};
window.onload = loaded;

document.addEventListener('ajax:success',function(){
    document.addEventListener('click', function (ev) {
        var el = ev.target;
        if (el.matches('.result-box')) {
            var set_title = el.querySelector(':scope > h3').textContent;
            var set_author = el.querySelector(':scope > p').textContent;
            var set_image = el.querySelector(':scope > img').getAttribute('src');
            document.getElementById('title').value = set_title;
            document.getElementById('author').value = set_author;
            document.getElementById('book_image').value = set_image;
        }
    }, false);
},false);