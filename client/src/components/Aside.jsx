/** @jsx jsx */
import { jsx } from "@emotion/core";
import { data } from "../data";
import LessonNavItem from "./LessonNavItem";
import { Card } from "./Ui";

function Aside({ styles, moduleID }) {
  return (
    <Card
      styles={{
        padding: "0px",
        ...styles
      }}
    >
      <p
        css={{
          padding: "20px 40px"
        }}
      >
        <b>{data[moduleID].name}</b>
      </p>
      {data[moduleID].resources.map((lesson, index) => (
        <LessonNavItem
          lessonName={lesson.title}
          moduleId={moduleID}
          lessonId={index}
          lessonOverview={lesson.mainResources[0].title}
        />
      ))}
    </Card>
  );
}

export default Aside;
