<?php
use yii\helpers\Html;

?>
<h1>รายงานประเภทคอมพิวเตอร์</h1>

<table class="table table-bordered table-hover table-striped">
    <thead>
        <tr class="info">
            <th>ลำดับ</th>
            <th>รหัสประเภท</th>
            <th>ประเภทคอม</th>
        </tr>
    </thead>
    <tbody>

        <?php
        foreach ($data as $i => $item) {

            echo '<tr>';
            echo '<td>'.($i+1).'</td>';
            echo '<td>'.$item['com_type_id'].'</td>';
            echo '<td>'.$item['com_type_name'].'</td>';
            echo '</tr>';
        }
        
      
        ?>

    </tbody>
</table>


