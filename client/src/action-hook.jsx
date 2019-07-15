import React from "react";
import { useDispatch } from "react-redux";
import { login } from "./action";

export function useLogin() {
  const dispatch = useDispatch();
  return React.useCallback(user => dispatch(login(user), [dispatch]));
}
