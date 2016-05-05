//= require fetch
//= require riot
//= require riot_rails
//= require redux
//= require lib/actions
//= require lib/reducers
//= require lib/store

//= require_tree ./tags

dispatchUpdate = function (json) {
  store.dispatch(updateGroups(json))
}

fetch('/api/groups.json')
  .then(function(response) { return response.json() })
  .then(dispatchUpdate);
