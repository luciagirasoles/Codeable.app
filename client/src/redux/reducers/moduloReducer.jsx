import initialState from "../initialState";

function moduloReducer(state = initialState.modulo, action = {}) {
  switch (action.type) {
    case "FETCH_DATA": {
      return action.payload;
    }
    default: {
      return state;
    }
  }
}

export default moduloReducer;
