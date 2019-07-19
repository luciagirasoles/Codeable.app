/** @jsx jsx */
import { jsx } from "@emotion/core";
import React from "react";
import { Link } from "@reach/router";
import { FaBookOpen } from "react-icons/fa";

function LessonNavItem({ lessonName, moduleId, lessonId, lessonOverview }) {
  let url = `/lessons/module/${moduleId}/lesson/${lessonId}`;
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
          <b>{lessonName}</b>
        </div>
        <div>lessonOverview</div>
      </div>
    </Link>
  );
}

export default LessonNavItem;
