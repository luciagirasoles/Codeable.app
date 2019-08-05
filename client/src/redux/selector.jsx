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

function useUsersList() {
  return useSelector(state => {
    if (state.userlist) {
      return state.userlist;
    } else {
      return {};
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

function useMiniAssignments() {
  return useSelector(state => {
    let sublessons = Object.values(state.lessonsData.sublessons); //[ , , ,  , ]
    let miniAssignments = sublessons.filter(sublesson => {
      return sublesson.tag_id === 3;
    });
    return arrayToObject(miniAssignments);
  }, shallowEqual);
}

function useSolutions() {
  return useSelector(state => {
    if (state.solutionsData) {
      return state.solutionsData;
    } else {
      return {};
    }
  }, shallowEqual);
}
function useGrades() {
  return useSelector(state => {
    return Object.fromEntries(
      Object.entries(
        Object.values(state.grades).reduce((gradesPerModule, grade) => {
          return {
            ...gradesPerModule,
            [grade.modulo]: gradesPerModule[grade.modulo]
              ? [...gradesPerModule[grade.modulo], grade]
              : [grade]
          };
        }, {})
      ).map(([moduleName, moduleGrades]) => {
        return [moduleName, moduleGrades.sort((a, b) => {
          if (a.week === null) return 1;
          if (b.week === null) return -1;
          return a.week - b.week
        })];
      })
    );
  }, shallowEqual);
}
export {
  useGrades,
  useUser,
  useUsersList,
  useModulos,
  useLessons,
  useModulo,
  useLesson,
  useSublessons,
  useSublesson,
  useMiniAssignments,
  useSolutions
};
