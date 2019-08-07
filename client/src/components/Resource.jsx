/** @jsx jsx */
import React from "react";
import { Tag } from "./UI/Ui";
import ClassLink from "./ClassLink";
import { jsx } from "@emotion/core";

function Resource({ tagId, title, sublessonId, lessonId }) {
  return (
    <li
      css={{
        marginBottom: "10px",
        display: "flex",
        "@media (max-width: 760px)": { display: "inline-flex" }
      }}
    >
      <div css={{ width: "100px" }}>
        <Tag tagId={tagId} />
      </div>
      <div
        css={{
          width: "400px",
          "@media (max-width: 760px)": { width: "min-content" }
        }}
      >
        <ClassLink
          title={title}
          sublessonId={sublessonId}
          lessonId={lessonId}
        />
      </div>
    </li>
  );
}

export default Resource;
