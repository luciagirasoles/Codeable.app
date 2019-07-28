import { combineReducers } from "redux";
import userReducer from "./reducers/userReducer";
import lessonsDataReducer from "./reducers/lessonsDataReducer";

const reducer = combineReducers({
  user: userReducer,
  lessonsData: lessonsDataReducer
});

const rootReducer = (state, action) => {
  if (action.type === "LOGOUT") {
    state = undefined;
  }

  return reducer(state, action);
};

export default rootReducer;
