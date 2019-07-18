import React from "react";
import { useSelector, shallowEqual } from "react-redux";

function useUser() {
  return useSelector(state => {
    if (state.user) {
      return state.user;
    } else {
      return null;
    }
  }, shallowEqual);
}

export { useUser };
