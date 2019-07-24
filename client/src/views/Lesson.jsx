/**@jsx jsx */
import React from "react";
import { jsx } from "@emotion/core";
import { useEffect } from "react";
import MainLayout from "../components/layouts/MainLayout";
import Aside from "../components/Aside";
// import { useSubLesson } from "../redux/action-hook";
import { useLessonData, useLesson, useSublesson } from "../redux/selector";
import { Redirect } from "@reach/router";
import { useUser } from "../redux/selector";
import { Card } from "../components/Ui";
import TopNavigation from "../components/TopNavigation";

function Lesson({ moduleId, lessonId, sublessonId }) {
  const user = useUser();
  const sublesson = useSublesson(moduleId, lessonId, sublessonId);

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
          <TopNavigation moduleId={moduleId} lessonId={lessonId} />
          <h1 css={{ marginBottom: "25px" }}>{sublesson.title}</h1>
          <p>{sublesson.content}</p>
        </Card>
        <Aside moduleId={moduleId} />
      </div>
    </MainLayout>
  );
}

export default Lesson;
