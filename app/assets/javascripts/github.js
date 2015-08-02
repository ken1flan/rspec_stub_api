function writeRepoList () {
  $.getJSON("https://api.github.com/users/ken1flan/repos", function (repos) {
    var repo_count = repos.length;
    var html = "<li>no repos</li>";
    if(repo_count > 0){
      for(i = 0, html = ""; i < repo_count; i++){
        var repo = repos[i];
        html += "<li>" + repo.name + "</li>";
      }
      $(".repo_list").html(html);
    }
  }); 
}
