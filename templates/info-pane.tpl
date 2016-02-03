<h3>
  <% var placename = get('placename')
    if (placename === 'not_recorded') placename = get('myarea')
    print(u.capitalize(placename)) %>
  <br>
  <small><%= u.capitalize(_getOther('happening', 'happening_other')) %></small>
</h3>

<div class="image-wrapper">
  <% if (getImage()) { %>
    <img src="<%= getImage() %>">
  <% } %>
</div>

<table class="table">
  <tr>
    <th>Where:</th>
    <td><%
    var location = get('myarea')
    var titleOrExtension = ''

    if (get('landtitle') === 'yes') {
      titleOrExtension = 'land title'
    } else if (get('customary') === 'yes') {
      titleOrExtension = 'extension area'
    }
    location = (location && location !== 'other') ? '<em>' + t(location) + '</em> in ' : ''
    location += '<em>' + t(get('myarea_village')) + '</em> ' + titleOrExtension
    print(location) %></td>
  </tr>
  <tr>
    <th>Coordinates:</th>
    <td><%= getFormattedCoords() %></td>
  </tr>
  <tr>
    <th>Impacts:</th>
    <td><%= t(_getOther('impacts','impacts_other')) %></td>
  </tr>
  <% if (attributes.other_info) { %>
  <tr>
    <th>Notes:</th>
    <td><%= attributes.other_info %></td>
  </tr>
  <% } %>
  <tr>
    <th>Visited&nbsp;by:</th>
    <td><%= _getOther('people', 'people_other') %></td>
  </tr>
  <tr>
    <th>Visit&nbsp;date:</th>
    <td><%= u.parseDate(get('today')) %></td>
  </tr>

</table>
