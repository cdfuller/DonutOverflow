$(document).ready(function() {

    $(".votes form").on('submit', clickVote)
});

var clickVote = function(event) {
    event.preventDefault();
    var form = $(this);
    $.post($(this).attr('action'), {
        value: $(this).find('button').attr('value')
    }).done(updateScoreDisplay.bind(form));

}

var updateScoreDisplay = function(json) {
    $(this).siblings('.vote-score').text(json['score']);
}