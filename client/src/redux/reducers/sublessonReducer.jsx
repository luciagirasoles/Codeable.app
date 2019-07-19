import initialState from "../initialState";

function sublessonReducer(state = initialState.sublesson, action = {}) {
  switch (action.type) {
    case "FETCH_DATA_SUBLESSON": {
      return action.payload;
    }
    default: {
      return state;
    }
  }
}

export default sublessonReducer;
