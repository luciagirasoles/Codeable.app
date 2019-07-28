import initialState from "../initialState";
import { arrayToObject } from "../../helpers";

function lessonsDataReducer(state = initialState.lessonsData, action = {}) {
  switch (action.type) {
    case "FETCH_DATA": {
      let data = action.payload;
      // refactor data to add to redux state
      let dataCopy = JSON.parse(JSON.stringify(data));
      let modulos = dataCopy.map(modulo => {
        modulo.lessons = modulo.lessons.map(lesson => lesson.id);
        return modulo;
      });

      modulos = arrayToObject(modulos);

      dataCopy = JSON.parse(JSON.stringify(data));
      let lessons = [];
      dataCopy.forEach(modulo => {
        modulo.lessons.map(lesson => {
          lesson.sublessons = lesson.sublessons.map(sublesson => sublesson.id);
          lesson.moduleId = modulo.id;
          return lesson;
        });
        lessons = lessons.concat(modulo.lessons);
      });

      lessons = arrayToObject(lessons);

      dataCopy = JSON.parse(JSON.stringify(data));
      let sublessons = [];
      dataCopy.forEach(modulo => {
        modulo.lessons.forEach(lesson => {
          lesson.sublessons.map(sublesson => {
            sublesson.lessonId = lesson.id;
            return sublesson;
          });
          sublessons = sublessons.concat(lesson.sublessons);
        });
      });

      sublessons = arrayToObject(sublessons);

      return {
        modulos: modulos,
        lessons: lessons,
        sublessons: sublessons
      };
    }

    default: {
      return state;
    }
  }
}

export default lessonsDataReducer;
