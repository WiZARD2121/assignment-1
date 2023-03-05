<?php
if(isset($_POST['submit']))
{
include('../dbcon.php');
    $idno=$_POST['idno'];
    $bengali=$_POST['bengali'];
    $english=$_POST['english1'];
    $math=$_POST['math'];
    $socialstudy=$_POST['socialstudy'];
   
    $sql="UPDATE `user_mark` SET  `bengali` = '$bengali', `english` = '$english', `math1` = '$math', `socialstudy` = '$socialstudy',  WHERE `idno` = '$idno'";
    
    $run=mysqli_query($con,$sql);
    if($run)
    {
        ?>
        <script>
        alert('Data Updated  Succesfully');
        window.open('updatemark_form.php?sid=<?php echo $idno; ?>', '_self');
             </script>
       
       
        <?php
    }
    else
    {
        echo "Error";
    }
}
?>