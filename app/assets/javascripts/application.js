//= require fetch
//= require riot

dispatchUpdate = function (json) {
  store.dispatch(updateGroups(json))
}

fetch('/api/groups.json')
  .then(function(response) { return response.json() })
  .then(dispatchUpdate);
