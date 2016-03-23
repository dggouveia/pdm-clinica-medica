<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
    <h4 class="modal-title">${medico.nome}</h4>
</div>
<div class="modal-dialog">
    <c:if test="${medico.lat != null && medico.log != null}">
        <form action="/medicos/${medico.id}/avaliacao" method="post">
            <div class="form-group">
                <label for="opiniao">Opiniao</label>
                <input type="text" class="form-control" id="opiniao" placeholder="Fale sobre ${medico.nome}" name="opiniao">
            </div>
            <div class="form-group">
                <label for="nota">Nota</label>
                <input type="number" max="5" min="0" class="form-control" id="nota" name="nota">
            </div>
            <input type="submit" class="btn btn-success" value="Adicionar avaliacao"/>
        </form>
        <div id="map" style="height: 300px">

        </div>
        <c:forEach items="${medico.avaliacoes}" var="av">
            <h5>${avaliacao.cliente.email}
                <small><i class="fa fa-star" />${avaliacao.nota}</small>
            </h5>
            <p>${avaliacao.opiniao}</p>
        </c:forEach>
    </c:if>
</div>
<div class="modal-footer">
    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
</div>
<c:if test="${medico.lat != null && medico.log != null}">
    <script>
        var map;
        function initMap() {
            map = new google.maps.Map(document.getElementById('map'), {
                center: {lat: ${medico.lat}, lng: ${medico.log}},
                zoom: 14
            });
            var marker = new google.maps.Marker({
                // The below line is equivalent to writing:
                // position: new google.maps.LatLng(-34.397, 150.644)
                position: {lat: ${medico.lat}, lng: ${medico.log}},
                map: map
            });
        }
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAyv0fL2EayLxcO92xTygqZp3pezRNz5To&callback=initMap"    
    async defer></script>
</c:if>