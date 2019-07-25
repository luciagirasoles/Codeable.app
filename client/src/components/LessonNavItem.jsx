/** @jsx jsx */
import { jsx } from "@emotion/core";
import React from "react";
import { Link } from "@reach/router";
import { FaBookOpen } from "react-icons/fa";
import { useLesson, useSublesson } from "../redux/selector";

function LessonNavItem({ lessonId }) {
  const lesson = useLesson(lessonId);
  const sublesson = useSublesson(lesson.sublessons[0]);
  let url = `/lessons/module/${lesson.moduleId}/lesson/${lessonId}/sublesson/${
    sublesson ? sublesson.id : 1
  }`;
  return (
    <Link
      to={url}
      css={{
        display: "grid",
        gridTemplateColumns: "25px 1fr",
        padding: "10px 40px",
        ":hover": { backgroundColor: "rgb(187, 186, 187)", cursor: "pointer" }
      }}
    >
      <span css={{ display: "table-cell", paddingTop: "2px" }}>
        <FaBookOpen />
      </span>
      <div css={{ fontSize: "15px" }}>
        <div>
          <b>{lesson.title}</b>
        </div>
        <div>{lesson.title}</div>
      </div>
    </Link>
  );
}

export default LessonNavItem;
