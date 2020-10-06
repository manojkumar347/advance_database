<p>States List - Experimental Version</p>
<table border="1">
%for row in rows:
    <tr>
        <td>{{row[0]}}</td>
        <td>
            <a href="/update_state/{{row[0]}}">{{row[1]}}</a>
        </td>
        <td>
        %if row[2]==0:
            <a href="/set_status/{{row[0]}}/1">{{row[2]}}</a>
        %else:
            <a href="/set_status/{{row[0]}}/0">{{row[2]}}</a>
        %end
        <td>
            <a href="/delete_state/{{row[0]}}">DELETE</a>
        </td>
    </tr>
%end
</table>
<a href="/Add_state">Add_state...</a>
<hr/>
