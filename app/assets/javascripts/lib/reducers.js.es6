const initialState = {
  groups: []
}

const sonosClient = (state = initialState, action) => {
  switch (action.type) {
    case 'UPDATE_GROUPS':
      return {
        groups: action.groups
      }
    default:
      return state
  }
}
