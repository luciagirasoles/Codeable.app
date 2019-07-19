/**@jsx jsx */
import { jsx } from "@emotion/core";
import { useEffect } from "react";
import MainLayout from "../components/layouts/MainLayout";
import Aside from "../components/Aside";
import { useSubLesson } from "../redux/action-hook";
import { useLessonData } from "../redux/selector";
import { Redirect } from "@reach/router";
import { useUser } from "../redux/selector";

function Lesson({ id }) {
  const user = useUser();
  const sublesson = useSubLesson();
  const lessonData = useLessonData();

  useEffect(() => {
    sublesson(id);
  }, []);

  if (!user.currentUser.name) return <Redirect to="/" noThrow />;

  return (
    <MainLayout>
      <div css={{ display: "grid", gridTemplateColumns: "1fr 200px" }}>
        <div>
          <h1>{lessonData.title} </h1>
          <br />
          <p>{lessonData.content}</p>
        </div>
        <Aside />
      </div>
    </MainLayout>
  );
}

export default Lesson;
