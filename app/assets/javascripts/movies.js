$(document).ready(function() {

	$('#movie-link').click(function() {
		$.ajax({
			method: 'GET',
			url: '/movies/get_characters',
			success: function(response) {
				
				let name = response.name;
				let height = response.height;
				let birthyear = response.birth_year;

				$('#char-name').text(name)
				$('#char-height').text(height)
				$('#char-birth-year').text(birthyear)


			}
		})

	});

});