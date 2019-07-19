import React from "react";
import { useDispatch } from "react-redux";
import { login, logout, requestAPI, requestSublesson } from "./action";

export function useLogin() {
  const dispatch = useDispatch();
  return React.useCallback(user => dispatch(login(user)), [dispatch]);
}

export function useLogout() {
  const dispatch = useDispatch();
  return React.useCallback(() => dispatch(logout()), [dispatch]);
}

export function useRequestAPI() {
  const dispatch = useDispatch();
  return React.useCallback(() => dispatch(requestAPI()), [dispatch]);
}

export function useSubLesson() {
  const dispatch = useDispatch();
  return React.useCallback(id => dispatch(requestSublesson(id)), [dispatch]);
}
