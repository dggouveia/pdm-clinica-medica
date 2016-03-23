<div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
    <h4 class="modal-title">Add medico</h4>
</div>
<form action="/medicos/add" method="post">
    <div class="modal-body">
        <div class="form-group">
            <label for="nome">Nome</label>
            <input type="text" class="form-control" id="nome" placeholder="Nome" name="nome">
        </div>
        <div class="form-group">
            <label for="nomeClinica">Nome da clínica</label>
            <input type="text" class="form-control" id="nomeClinica" placeholder="Nome da clinica que trabalha" name="nomeClinica">
        </div>
        <div class="form-group">
            <label for="nome">Contato</label>
            <input type="text" class="form-control" id="contato" placeholder="Contato (email e/ou telefone)" name="contato">
        </div>
        <div class="form-group">
            <label for="cidade">Cidade</label>
            <input type="text" class="form-control" id="cidade" name="cidade">
        </div>
        <div class="form-group">
            <label for="estado">Estado</label>
            <input type="text" class="form-control" id="estado" name="estado">
        </div>
        <div class="form-group">
            <label for="lat">Latitude da clínica</label>
            <input type="text" class="form-control" id="lat" name="lat">
        </div>
        <div class="form-group">
            <label for="log">Longitude da clínica</label>
            <input type="text" class="form-control" id="log" name="log">
        </div>
        <div class="form-group">
            <label for="especialidade">Especialidade</label>
            <input type="text" class="form-control" id="especialidade" name="especialidade">
        </div>
    </div>
    <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <input type="submit" class="btn btn-primary" value="Adicionar" />
    </div>
</form>