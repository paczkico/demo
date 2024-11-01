export default {
  resource: "user",
  map() {
    this.route("feedbacks");
  },
};

function deleteFeedback(feedbackId) {
  if (confirm("¿Estás seguro de que deseas eliminar esta reseña?")) {
    fetch(`/user_feedbacks/${feedbackId}`, {
      method: 'DELETE',
      headers: {
        'Content-Type': 'application/json',
        'X-CSRF-Token': DiscourseCSRF.token
      }
    })
    .then(response => {
      if (response.ok) {
        location.reload(); // Recargar la página para mostrar los cambios
      } else {
        alert("Error al eliminar la reseña.");
      }
    });
  }
}
