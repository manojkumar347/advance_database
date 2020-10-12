<a href="/">Show States List</a>
<a href="/get_add_state_template">Add state</a>
<h1 style='text-align: center;'>Update state</h1>
<form action="/update_state/{{rows[0]}}" method="POST">
    <label>State:</label>
    <input type="text" size="100" maxlength="100" name="state" value="{{rows[1]}}"><br>
    <label>Capital:</label>
    <input type="text" size="100" maxlength="100" name="capital" value="{{rows[2]}}">
    <input type="submit" name="update" value="update">
</form>    
