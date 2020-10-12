<style>
  table {
    font-family: sans-serif;
    /* Change your font family */
  }

  .content-table {
    border-collapse: collapse;
    margin: 25px 0;
    font-size: 0.9em;
    min-width: 400px;
    border-radius: 5px 5px 0 0;
    overflow: hidden;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
  }

  .content-table thead tr {
    background-color: #009879;
    color: #ffffff;
    text-align: left;
    font-weight: bold;
  }

  .content-table th,
  .content-table td {
    padding: 12px 15px;
  }

  .content-table tbody tr {
    border-bottom: 1px solid #dddddd;
  }

  tbody tr:nth-child(even) td {
    background-color: #f3f3f3;
  }

  tbody tr:last-of-type {
    border-bottom: 2px solid #009879;
  }

  .content-table tbody tr.active-row {
    font-weight: bold;
    color: #009879;
  }
</style>

<nav>
  <a href="/get_add_state_template"> Add state</a>
</nav>

<table class='content-table'>

  <thead>
    <tr>
    <th>ID</th>
    <th>STATE</th>
    <th>CAPITAL</th>
    <th>DELETE</th>
    <th>UPDATE</th>
    </tr>
  </thead>
  <tbody>
    %for row in rows:
    <tr>
      %for item in row:
      <td>{{item}}</td>
      %end
      <td>
        <a href="/delete_state/{{row[0]}}">DELETE</a>
      </td>
      <td>
        <a href="/get_state_by_id/{{row[0]}}">UPDATE</a>
      </td>
    </tr>
    %end
  </tbody>
</table>