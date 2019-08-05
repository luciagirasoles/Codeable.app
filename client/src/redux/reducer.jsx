import { combineReducers } from "redux";

import userReducer from "./reducers/userReducer";
import lessonsDataReducer from "./reducers/lessonsDataReducer";
import solutionsDataReducer from "./reducers/solutionsDataReducer";
import gradesReducer from "./reducers/gradesReducer";
import usersDataReducer from "./reducers/usersDataReducer";

const reducer = combineReducers({
  user: userReducer,
  userlist: usersDataReducer,
  lessonsData: lessonsDataReducer,
  solutionsData: solutionsDataReducer,
  grades: gradesReducer
});

const rootReducer = (state, action) => {
  if (action.type === "LOGOUT") {
    state = undefined;
  }

  return reducer(state, action);
};

export default rootReducer;
