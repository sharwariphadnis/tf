resource "null_resource" "example1" { 
  provisioner "local-exec" { 
     command = "find ." 
     interpreter = ["sh", "-c"]    
  } 
}
