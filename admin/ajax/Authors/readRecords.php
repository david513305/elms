<?php
	// include Database connection file 
	include("../../dbconnect.php");

	// Design initial table header 
	$data = '<table class="table table-striped table-bordered bootstrap-datatable" id="example">
						<tr>
							<th>No.</th>
							<th class="text-center">Імя автора</th>
							<th class="text-center">Оновити</th>
							<th class="text-center">Видалити</th>
						</tr>';

	$query = "SELECT `author_id`, `author_name` FROM authors ORDER BY author_name ASC LIMIT 0, 10";

	$result= $conn->query($query);
    //exit(mysql_error());
    $result->setFetchMode(PDO::FETCH_ASSOC);
    $numrows =$result->rowCount();
    //print_r($numrows);

//for pagination count page
$queryCountRows = "SELECT * from authors";
$queryCountResult = $conn->query($queryCountRows);
$queryCountResult->setFetchMode(PDO::FETCH_ASSOC);
$countnumrows =$queryCountResult->rowCount();


    // if query results contains rows then featch those rows 
    if($numrows > 0)
    {
    	$number = 1;
    	while($row = $result->fetch(PDO::FETCH_ASSOC))
    	{
    		$data .= '<tr>
				<td class="text-left">'.$number.'</td>
				<td class="text-center">'.$row['author_name'].'</td>
				<td class="text-center">
					<a class="btn btn-info" href="#" onclick="GetAuthorDetails('.$row['author_id'].')">
		                <i class="glyphicon glyphicon-edit icon-white"></i>
		                Редагувати
            		</a>
            
				</td>
				<td class="text-center">
					<a class="btn btn-danger" href="#" onclick="DeleteAuthor('.$row['author_id'].')">
		                <i class="glyphicon glyphicon-trash icon-white"></i>
		                Видалити
            		</a>
				</td>
    		</tr>';
    		$number++;
    	}
    }
    else
    {
    	// records now found 
    	$data .= '<tr><td colspan="6">Records not found!</td></tr>';
    }

    $data .= '</table>';

// pagination start
$totalpage =$countnumrows/10;
$totalpage =ceil($totalpage);
$currentpage    = (isset($_GET['page']) ? $_GET['page'] : 1);
$firstpage      = 1;
$lastpage       = $totalpage;
$loopcounter = ( ( ( $currentpage + 2 ) <= $lastpage ) ? ( $currentpage + 2 ) : $lastpage );
$startCounter =  ( ( ( $currentpage - 2 ) >= 3 ) ? ( $currentpage - 2 ) : 1 );

if($totalpage > 1)
{
	$data .= '<div class="pagination-container wow zoomIn mar-b-1x" data-wow-duration="0.5s">';
	$data .= '<ul class="pagination">';
	$data .= '<li class="pagination-item--wide first"> <a class="pagination-link--wide first" href="authors-manage.php?page=1">First</a> </li>';
	for($i = $startCounter; $i <= $loopcounter; $i++)
	{
		if($i==1){
			$defaultActive = "is-active";
		}else{
			$defaultActive = "";
		}
		$data .= '<li class="pagination-item '.$defaultActive.'"> <a class="pagination-link" href="authors-manage.php?page='.$i.'">'.$i." ".'</a> </li>';
	}
	$data .= '<li class="pagination-item--wide last"> <a class="pagination-link--wide last" href="authors-manage.php?page='.$totalpage.'">Last</a> </li>';
	$data  .= '</ul>';
	$data .= '</div>';
}
$data .= '</div>';
echo $data ;
?>