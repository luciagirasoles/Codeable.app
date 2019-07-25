import { combineReducers } from "redux";
import userReducer from "./reducers/userReducer";
import lessonsDataReducer from "./reducers/lessonsDataReducer";

const reducer = combineReducers({
  user: userReducer,
  lessonsData: lessonsDataReducer
});

export default reducer;
