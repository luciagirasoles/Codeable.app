const initialState = {
  user: { currentUser: {}, loading: false, error: null },
  lessonsData: {
    modulos: {
      1: {
        id: 1,
        name: "default",
        description: "default",
        lessons: [1]
      }
    },
    lessons: {
      1: {
        id: 1,
        title: "default",
        sublessons: [1]
      }
    },
    sublessons: {
      1: {
        id: 1,
        title: "default",
        content: "default",
        section: "main",
        lesson_id: 1,
        tag_id: 1,
        created_at: "2019-07-19T16:36:34.123Z",
        updated_at: "2019-07-19T16:36:34.123Z"
      }
    }
  },
  solutionsData: {
    1: {
      id: 1,
      content: "default",
      status: "default",
      user_id: 1,
      sublesson_id: 1
    }
  }
};

export default initialState;
