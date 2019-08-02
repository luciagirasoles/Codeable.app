import initialState from "../initialState";
import { arrayToObject } from "../../helpers";

function gradesReducer(state = initialState.grades, action = {}) {
  switch (action.type) {
    case "FETCH_DATA_GRADES":
      return arrayToObject(action.payload);
    default:
      return state;
  }
}

export default gradesReducer;
