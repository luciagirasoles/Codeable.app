/**@jsx jsx */
import { jsx } from "@emotion/core";
import { useEffect } from "react";
import MainLayout from "../components/layouts/MainLayout";
import Aside from "../components/Aside";
import { useSubLesson } from "../redux/action-hook";
import { useLessonData } from "../redux/selector";
import { Redirect } from "@reach/router";
import { useUser } from "../redux/selector";
import { Card } from "../components/Ui";

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
      <div
        css={{
          display: "grid",
          gridTemplateColumns: "1fr 250px",
          gridGap: "70px",
          height: "100%"
        }}
      >
        <Card styles={{ padding: "50px" }}>
          <h1 css={{ marginBottom: "25px" }}>{lessonData.title} </h1>
          <p>{lessonData.content}</p>
        </Card>
        <Aside moduleID={0} />
      </div>
    </MainLayout>
  );
}

export default Lesson;
