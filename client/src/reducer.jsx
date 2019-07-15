import { combineReducers } from "redux";

const initialState = {
  user: { currentUser: {}, loading: false, error: null }
};

function userReducer(state = initialState.user, action = {}) {
  switch (action.type) {
    case "LOGIN_REQUEST": {
      return {
        ...state,
        loading: true
      };
    }
    case "LOGIN_SUCCESS": {
      return {
        ...state,
        currentUser: action.payload,
        loading: false
      };
    }
    case "LOGOUT": {
      return {
        ...state,
        currentUser: {},
        loading: false,
        error: null
      };
    }
    case "LOGIN_ERROR": {
      return {
        ...state,
        error: action.payload,
        loading: false
      };
    }
    default: {
      return state;
    }
  }
}

const reducer = combineReducers({
  user: userReducer
});

export default reducer;
