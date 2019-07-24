const initialState = {
  user: { currentUser: {}, loading: false, error: null },
  modulos: [
    {
      id: 1,
      name: "default",
      description: "default",
      lessons: [
        {
          id: 1,
          title: "default",
          sublessons: [
            {
              id: 1,
              title: "default",
              content: "default",
              section: "main",
              lesson_id: 1,
              tag_id: 1,
              created_at: "2019-07-19T16:36:34.123Z",
              updated_at: "2019-07-19T16:36:34.123Z"
            }
          ]
        }
      ]
    }
  ],
  sublesson: { id: "", title: "", content: "" }
};

export default initialState;
