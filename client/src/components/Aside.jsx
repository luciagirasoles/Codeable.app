/** @jsx jsx */
import { jsx } from "@emotion/core";
import LessonNavItem from "./LessonNavItem";
import { Card } from "./UI/Ui";
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
      {modulo.lessons.map(lessonId => (
        <LessonNavItem lessonId={lessonId} key={lessonId} />
      ))}
    </Card>
  );
}

export default Aside;
