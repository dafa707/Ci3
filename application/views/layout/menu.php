<nav class="navbar navbar-expand navbar-dark bg-dark" aria-label="Second navbar example">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">Parkir Sederhana</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsExample02" aria-controls="navbarsExample02" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarsExample02">
        <ul class="navbar-nav me-auto">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="<?=base_url()?>admin/parkir">Data Parkir</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="<?=base_url()?>admin/parkir/tambah">Input Data</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="<?=base_url()?>Login/out">Keluar</a>
          </li>
        </ul>
      </div>
    </div>
</nav>