import React from "react";
import { useSelector, shallowEqual } from "react-redux";

function useUser() {
  return useSelector(state => {
    if (state.user.currentUser) {
      return state.user.currentUser.name;
    } else {
      return null;
    }
  }, shallowEqual);
}

export { useUser };
