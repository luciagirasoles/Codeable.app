import initialState from "../initialState";
import { arrayToObject } from "../../helpers";

function solutionsDataReducer(state = initialState.solutionsData, action = {}) {
  switch (action.type) {
    case "LIST_SOLUTIONS": {
      return arrayToObject(action.payload);
    }

    default:
      return state;
  }
}

export default solutionsDataReducer;
