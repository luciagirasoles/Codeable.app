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

function useModulo() {
  return useSelector(state => {
    if (state.modulo) {
      return state.modulo;
    } else {
      return [];
    }
  }, shallowEqual);
}

function useLessonData() {
  return useSelector(state => {
    if (state.sublesson) {
      return state.sublesson;
    } else {
      return null;
    }
  }, shallowEqual);
}

export { useUser, useModulo, useLessonData };