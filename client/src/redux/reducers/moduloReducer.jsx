import initialState from "../initialState";

function moduloReducer(state = initialState.modulos, action = {}) {
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
