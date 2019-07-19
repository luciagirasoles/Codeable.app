/** @jsx jsx */
import React from "react";
import Tag from "./Tag";
import ClassLink from "./ClassLink";
import { jsx } from "@emotion/core";

function Resource({ key, tag_id, title, id }) {
  return (
    <li key={key} css={{ marginBottom: "10px", display: "flex" }}>
      <div css={{ width: "100px" }}>
        <Tag tag_id={tag_id} />
      </div>
      <div css={{ width: "400px" }}>
        <ClassLink title={title} id={id} />
      </div>
    </li>
  );
}

export default Resource;
