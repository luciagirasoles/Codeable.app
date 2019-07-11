/** @jsx jsx */
import React from "react";
import Tag from "./Tag";
import ClassLink from "./ClassLink";
import { jsx } from "@emotion/core";

function Resource({ key, tagname, title }) {
  return (
    <li key={key} css={{ marginBottom: "10px", display: "flex" }}>
      <div css={{ width: "100px" }}>
        <Tag tagname={tagname} />
      </div>
      <div css={{ width: "400px" }}>
        <ClassLink title={title} />
      </div>
    </li>
  );
}

export default Resource;
