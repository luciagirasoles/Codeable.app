/** @jsx jsx */
import { jsx } from "@emotion/core";
import LessonNavItem from "./LessonNavItem";
import { Card } from "./Ui";
import { useModulo } from "../redux/selector";

function Aside({ styles, moduleId }) {
  const modulo = useModulo(moduleId);

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
        <b>{modulo.name}</b>
      </p>
      {modulo.lessons.map((lesson, index) => (
        <LessonNavItem
          lessonName={lesson.title}
          moduleId={moduleId}
          lessonId={lesson.id}
          lessonOverview={lesson.sublessons[0] && lesson.sublessons[0].title}
        />
      ))}
    </Card>
  );
}

export default Aside;
