import React from "react";
import { useDispatch } from "react-redux";
import { login, logout, requestModulos, requestSublesson } from "./action";

export function useLogin() {
  const dispatch = useDispatch();
  return React.useCallback(user => dispatch(login(user)), [dispatch]);
}

export function useLogout() {
  const dispatch = useDispatch();
  return React.useCallback(() => dispatch(logout()), [dispatch]);
}

export function useRequestModulos() {
  const dispatch = useDispatch();
  return React.useCallback(() => dispatch(requestModulos()), [dispatch]);
}

export function useSubLesson() {
  const dispatch = useDispatch();
  return React.useCallback(id => dispatch(requestSublesson(id)), [dispatch]);
}
