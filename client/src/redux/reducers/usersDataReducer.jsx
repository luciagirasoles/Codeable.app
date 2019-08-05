import initialState from "../initialState";
import { arrayToObject } from "../../helpers";

function usersDataReducer(state = initialState.userlist, action = {}) {
  switch (action.type) {
    case "LIST_USERS": {
      return arrayToObject(action.payload);
    }

    default:
      return state;
  }
}

export default usersDataReducer;
