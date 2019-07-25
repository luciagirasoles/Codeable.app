import { useSelector, shallowEqual } from "react-redux";
import { arrayToObject } from "../helpers";

function useUser() {
  return useSelector(state => {
    if (state.user) {
      return state.user;
    } else {
      return null;
    }
  }, shallowEqual);
}

function useModulos() {
  return useSelector(state => {
    if (state.lessonsData.modulos) {
      return Object.values(state.lessonsData.modulos);
    } else {
      return [];
    }
  }, shallowEqual);
}

function useModulo(id) {
  return useSelector(state => {
    return state.lessonsData.modulos[id];
  }, shallowEqual);
}

function useLessons() {
  return useSelector(state => {
    return state.lessonsData.lessons;
  }, shallowEqual);
}

function useLesson(lessonId) {
  return useSelector(state => {
    return state.lessonsData.lessons[lessonId];
  }, shallowEqual);
}

function useSublessons(lessonId) {
  return useSelector(state => {
    if (lessonId === undefined) {
      return state.lessonsData.sublessons;
    } else {
      return arrayToObject(
        state.lessonsData.lessons[lessonId].sublessons.map(
          sublessonId => state.lessonsData.sublessons[sublessonId]
        )
      );
    }
  }, shallowEqual);
}

function useSublesson(sublessonId) {
  return useSelector(state => {
    return state.lessonsData.sublessons[sublessonId];
  }, shallowEqual);
}

export {
  useUser,
  useModulos,
  useLessons,
  useModulo,
  useLesson,
  useSublessons,
  useSublesson
};
