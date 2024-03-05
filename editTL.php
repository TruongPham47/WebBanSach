
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <title>Admin Panel</title>
  <style>
    

    .navbar {
      background-color: #3498db;
    }
    .navbar li a {
  margin-right: 40px;
}

    .navbar-brand, .navbar-nav .nav-link {
      color: #fff;
    }

    .navbar-toggler-icon {
      background-color: #fff;
    }

    .sidebar {
      height: 100vh;
      position: fixed;
      top: 56px;
      background-color: #2c3e50;
      padding-top: 20px;
    }

    .sidebar-sticky {
      padding-top: 20px;
    }

    .sidebar a {
      color: #fff;
    }

    .sidebar a:hover {
      color: #3498db;
    }

    .main-content {
      margin-left: 220px;
      padding: 20px;
      
    }
    form {
            background-color: #fff;
            border: 1px solid #ddd;
            padding: 8px;
            margin-left: 150px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 600px;
        }

        h2 {
            text-align: center;
            color: #333;
        }

        label {
            display: block;
            margin-bottom: 8px;
        }

        input[type="text"]
         {
            width: 100%;
            padding: 8px;
            margin-bottom: 16px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
            resize: vertical;
        }
        
.DK{
    background: #3498db;
    border: 1px solid #f5f5f5;
    color: #fff;
    width: 100%;
    text-transform: uppercase;

    transition: 0.25s ease-in-out;
    margin-top: 10px;
}
.DK:hover{
    /* border: 5px solid #a52a2a; */
    background:#a52a2a ;
}

     
  </style>
</head>
<body>

  <!-- Navbar -->
  <nav class="navbar navbar-expand-lg navbar-dark">
    <a class="navbar-brand" href="#">Admin </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav ml-auto">
                    <!-- Collapsible section -->
    <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              Cài Đặt
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
           
              <a class="dropdown-item" href="LoginAdmin.php">Đăng Xuất</a>
            </div>
          </li>
      <!-- End of Collapsible section -->
      </ul>
    </div>
  </nav>

  <!-- Sidebar -->
  <div class="container-fluid">
    <div class="row">
      <nav class="col-md-2 d-none d-md-block sidebar">
        <div class="sidebar-sticky">
          <ul class="nav flex-column">
            <li class="nav-item">
              <a class="nav-link active" href="index.php">
                Quản Lý Sản Phẩm
              </a>
            </li>
              <!-- Collapsible section -->
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" data-toggle="collapse" href="#categoryCollapse" aria-expanded="false" aria-controls="categoryCollapse">
          Tạo Mới Sản Phẩm
        </a>
        <div class="collapse" id="categoryCollapse">
          <ul class="nav flex-column">
            <li class="nav-item">
              <a class="nav-link" href="insert_TheLoai.php">Thể Loại</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="insert_SanPham.php">Sản Phẩm</a>
            </li>
          
          </ul>
        </div>
      </li>
      <!-- End of Collapsible section -->
            <li class="nav-item">
              <a class="nav-link" href="TheLoai.php">
                 Thể Loại
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="SanPham.php">
                Sản phẩm
              </a>
            </li>
            
          </ul>
        </div>
      </nav>

      <!-- Page Content -->
      <main class="main-content">
        <div class="container-fluid">
        <?php
// Kết nối
include "database.php";


if (isset($_GET['id'])) {
    $catID = $_GET['id'];

   
    $stm = $pdo->prepare("SELECT * FROM category WHERE cat_id = ?");
    $stm->execute([$catID]);
    $cat = $stm->fetch(PDO::FETCH_ASSOC);

    // Check if the book exists
    if (!$cat) {
        echo "cat not found.";
        exit;
    }
} else {
    echo "cat ID not provided.";
    exit;
}


if ($_SERVER['REQUEST_METHOD'] === 'POST') {
  
    $updatedID = $_POST['catID'];
    $updatedName = $_POST['catname'];
    

    // Update  book trong database
    $updateStm = $pdo->prepare("UPDATE category SET cat_name = ?  WHERE cat_id = ?");
    $updateStm->execute([$updatedName,$updatedID]);

 
    echo '<script>window.location.href = "TheLoai.php";</script>';
}
?>

        <h2>Cập Nhật Thể Loại</h2>
        <form method="POST">
        <label for="cat_id"> Mã:</label>
        <input type="text"  name="catID" value="<?= $cat['cat_id'] ?>" required>
        <br>
        <label for="cat_name"> Tên:</label>
        <input type="text"  name="catname" value="<?= $cat['cat_name'] ?>" required>
        
        
        <input type="submit" value="Cập Nhật" name="submit" class="DK">
    </form>
      
      
        </div>
      </main>    
    </div>
  </div>

  <!-- Bootstrap JS and dependencies -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
