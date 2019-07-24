import { combineReducers } from "redux";
import userReducer from "./reducers/userReducer";
import moduloReducer from "./reducers/moduloReducer";
import sublessonReducer from "./reducers/sublessonReducer";

const reducer = combineReducers({
  user: userReducer,
  modulos: moduloReducer,
  sublesson: sublessonReducer
});

export default reducer;
