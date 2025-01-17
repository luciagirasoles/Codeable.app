import React from "react";
import { useDispatch } from "react-redux";
import {
  login,
  logout,
  requestUsersList,
  requestModulos,
  requestSublesson,
  requestSolutions,
  createSolution,
  updateSolution,
  requestGrades
} from "./action";

export function useLogin() {
  const dispatch = useDispatch();
  return React.useCallback(user => dispatch(login(user)), [dispatch]);
}

export function useLogout() {
  const dispatch = useDispatch();
  return React.useCallback(() => dispatch(logout()), [dispatch]);
}

export function useRequestUsersList() {
  const dispatch = useDispatch();
  return React.useCallback(() => dispatch(requestUsersList()), [dispatch]);
}
export function useRequestModulos() {
  const dispatch = useDispatch();
  return React.useCallback(() => dispatch(requestModulos()), [dispatch]);
}

export function useSubLesson() {
  const dispatch = useDispatch();
  return React.useCallback(id => dispatch(requestSublesson(id)), [dispatch]);
}

export function useRequestSolutions() {
  const dispatch = useDispatch();
  return React.useCallback(() => dispatch(requestSolutions()), [dispatch]);
}

export function useCreateSolution() {
  const dispatch = useDispatch();
  return React.useCallback(
    solutiondata => dispatch(createSolution(solutiondata)),
    [dispatch]
  );
}
export function useUpdateSolution() {
  const dispatch = useDispatch();
  return React.useCallback(
    solutiondata => dispatch(updateSolution(solutiondata)),
    [dispatch]
  );
}

export function useRequestGrades() {
  const dispatch = useDispatch();
  return React.useCallback(() => dispatch(requestGrades()), [dispatch]);
}
