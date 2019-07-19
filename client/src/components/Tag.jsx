/** @jsx jsx*/
import React from "react";
import { jsx } from "@emotion/core";

const Tag = ({ tag_id }) => {
  let color;
  let tag_text;
  switch (tag_id) {
    case 1:
      color = "green";
      tag_text = "OVERVIEW";
      break;
    case 2:
      color = "blue";
      tag_text = "WORKSHOP";
      break;
    case 3:
      color = "orange";
      tag_text = "M-ASSIGN";
      break;
    case 4:
      color = "purple";
      tag_text = "EXERCISES";
      break;
    default:
      color = "brown";
      tag_text = "BLOG";
      break;
  }

  return (
    <span
      css={{
        fontSize: ".6em",
        fontWeight: "bold",
        letterSpacing: "1px",
        backgroundColor: color,
        color: "white",
        display: "inline-block",
        padding: "4px",
        borderRadius: "5px"
      }}
    >
      {tag_text}
    </span>
  );
};

export default Tag;
