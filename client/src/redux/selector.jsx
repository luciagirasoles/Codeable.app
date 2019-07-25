import { useSelector, shallowEqual } from "react-redux";
import initialState from "./initialState";

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
    if (state.modulos) {
      return state.modulos;
    } else {
      return [];
    }
  }, shallowEqual);
}

function useModulo(id) {
  return useSelector(state => {
    try {
      const modulo = state.modulos.find(modulo => modulo.id === id);

      if (modulo === undefined) return initialState.modulos[0];
      return modulo;
    } catch (err) {
      return initialState.modulos[0];
    }
  }, shallowEqual);
}

function useLesson(idModule, idLesson) {
  return useSelector(state => {
    try {
      const lesson = state.modulos
        .find(modulo => modulo.id === idModule)
        .lessons.find(lesson => lesson.id === idLesson);
      if (lesson === undefined) return initialState.modulos[0].lessons[0];
      return lesson;
    } catch (err) {
      return initialState.modulos[0].lessons[0];
    }
  }, shallowEqual);
}

function useLessons() {
  return useSelector(state => {
    if (state.modulos) {
      const modulos = state.modulos;
      let lessons = [];
      modulos.forEach(modulo => {
        let moduleLessons = modulo.lessons.map(lesson => {
          lesson.moduleId = modulo.id;
          return lesson;
        });
        lessons.push(moduleLessons);
      });
      return lessons.flat();
    } else {
      return [];
    }
  }, shallowEqual);
}

function useSublesson(idModule, idLesson, idSublesson) {
  return useSelector(state => {
    try {
      const sublesson = state.modulos
        .find(modulo => modulo.id === idModule)
        .lessons.find(lesson => lesson.id === idLesson)
        .sublessons.find(sublesson => sublesson.id === idSublesson);
      if (sublesson === undefined)
        return initialState.modulos[0].lessons[0].sublessons[0];

      return sublesson;
    } catch (err) {
      return initialState.modulos[0].lessons[0].sublessons[0];
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

export {
  useUser,
  useModulos,
  useLessonData,
  useModulo,
  useLesson,
  useLessons,
  useSublesson
};
