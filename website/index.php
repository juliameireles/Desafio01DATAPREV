<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8">
  <title>Lista de Livros</title>
  <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css" />
</head>
<body>
  <?php
    $api_url = "http://api:9001/livros"; // Nome correto do serviço Node.js no Docker
    $result = @file_get_contents($api_url);

    if ($result === FALSE) {
        echo "<p class='alert alert-danger'>Erro ao conectar à API.</p>";
        $livros = [];
    } else {
        $livros = json_decode($result);
    }
  ?>
  
  <div class="container">
    <h1 class="mt-4">Lista de Livros</h1>
    <table class="table table-striped">
      <thead>
        <tr>
          <th>Título</th>
          <th>Autor</th>
          <th>Preço</th>
        </tr>
      </thead>
      <tbody>
        <?php if (!empty($livros) && is_array($livros)): ?>
          <?php foreach ($livros as $livro): ?>
            <tr>
              <td><?php echo htmlspecialchars($livro->titulo, ENT_QUOTES, 'UTF-8'); ?></td>
              <td><?php echo htmlspecialchars($livro->autor, ENT_QUOTES, 'UTF-8'); ?></td>
              <td>R$ <?php echo number_format($livro->preco, 2, ',', '.'); ?></td>
            </tr>
          <?php endforeach; ?>
        <?php else: ?>
          <tr>
            <td colspan="3">Nenhum livro encontrado.</td>
          </tr>
        <?php endif; ?>
      </tbody>
    </table>
  </div>
</body>
</html>
