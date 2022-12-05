<?php
    function connect() {
        $link = mysqli_connect("localhost", "root", "", "wedkowanie");
    
        if ($link->connect_error) {
            echo "Caught an error while connecting to the database";
        }
        return $link;
    }

    function skrypt1($link) {
        // Attempt select query execution
        $sql = "SELECT nazwa, akwen, wojewodztwo FROM Ryby LEFT JOIN Lowisko ON Ryby.id = Lowisko.ryby_id WHERE rodzaj = 3;";
        $result = mysqli_query($link, $sql);
        if (!$result) {
            echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
        }
            if(mysqli_num_rows($result) > 0){
                while($row = mysqli_fetch_array($result)){
                    echo "
                        <li>
                            {$row['nazwa']} pływa w rzece 
                            {$row['akwen']}, 
                            {$row['wojewodztwo']}
                        </li>";
                }
                // Free result set
                mysqli_free_result($result);
            } else{
                echo "No records matching your query were found.";
            }
        }

    function skrypt2($link) {
        // Attempt select query execution
        $sql = "SELECT id, nazwa, wystepowanie FROM Ryby WHERE styl_zycia = 1;";
        $result = mysqli_query($link, $sql);
        if (!$result) {
            echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
        }
            if(mysqli_num_rows($result) > 0){
                while($row = mysqli_fetch_array($result)){
                    echo "
                    <tr>
                        <td>
                            {$row['id']}
                        </td>
                        <td>
                            {$row['nazwa']}
                        </td>
                        <td>
                            {$row['wystepowanie']}
                        </td>
                    </tr>";
                }
                // Free result set
                mysqli_free_result($result);
            } else{
                echo "No records matching your query were found.";
            }
        }

    function closing($link) {
        $link->close();
    }
?>