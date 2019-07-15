import React from "react";
import { useDispatch } from "react-redux";
import { login, logout } from "./action";

export function useLogin() {
  const dispatch = useDispatch();
  return React.useCallback(user => dispatch(login(user)), [dispatch]);
}

export function useLogout() {
  const dispatch = useDispatch();
  return React.useCallback(() => dispatch(logout()), [dispatch]);
}
