/**@jsx jsx */
import React from "react";
import { jsx } from "@emotion/core";
import { Link } from "@reach/router";
import { useLesson, useSublessons } from "../redux/selector";

function TopNavigation({ moduleId, lessonId }) {
  const TAGS = ["OVERVIEW", "WORKSHOP", "M-ASSIGN", "EXERCISES", "BLOG"];
  const lesson = useLesson(lessonId);
  const sublessons = useSublessons(lessonId);

  return (
    <div
      css={{
        display: "flex",
        justifyContent: "space-between",
        color: "white",
        fontSize: ".9em",
        fontWeight: "bold",
        marginBottom: "100px"
      }}
    >
      {lesson.sublessons.map(sublessonId => {
        return (
          <Link
            to={`/lessons/module/${moduleId}/lesson/${lessonId}/sublesson/${sublessonId}`}
            css={{
              backgroundColor: "#163236",
              padding: "5px 10px",
              borderRadius: "10px"
            }}
            key={sublessonId}
          >
            {TAGS[sublessons[sublessonId].tag_id - 1]}
          </Link>
        );
      })}
    </div>
  );
}

export default TopNavigation;
