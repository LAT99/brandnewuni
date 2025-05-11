<!DOCTYPE html>
<html>
<head>
    <style>
        ul.b {
            /* list-style-type: square; */
            }
        table {
        font-family: arial, sans-serif;
        border-collapse: collapse;
        width: 60%;
        }

        td, th {
        border: 1px solid #dddddd;
        text-align: left;
        padding: 8px;
        }

        tr:nth-child(even) {
        background-color: #dddddd;
        }
    </style>
</head>
<body>
<h1>Cảm ơn bạn đã tham gia chương trình:</h1>
   
Các mã thẻ bạn đã quy đổi như sau:<br/>
@if($cardSendCustomer)
<table>
<tr>
    <th>Nhà cung cấp</th>
    <th>Mã thẻ</th>
    <th>Số Seri</th>
    <th>Mệnh giá</th>
</tr>
@foreach($cardSendCustomer as $no => $card)
    <tr>
        <td>{{array_key_exists($card->provider_id, $providerName) ? $providerName[$card->provider_id] : ''}}</td>
        <td>{{$card->code_number}}</td>
        <td>{{$card->seri_number}}</td>
        <td>{{$card->price}}VND</td>
    </tr>
@endforeach
</table>

@endif
</body>
</html>