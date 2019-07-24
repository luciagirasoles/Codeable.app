/** @jsx jsx*/
import React from "react";
import { jsx } from "@emotion/core";

const Tag = ({ tagId }) => {
  let color;
  let tagText;
  switch (tagId) {
    case 1:
      color = "green";
      tagText = "OVERVIEW";
      break;
    case 2:
      color = "blue";
      tagText = "WORKSHOP";
      break;
    case 3:
      color = "orange";
      tagText = "M-ASSIGN";
      break;
    case 4:
      color = "purple";
      tagText = "EXERCISES";
      break;
    default:
      color = "brown";
      tagText = "BLOG";
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
      {tagText}
    </span>
  );
};

export default Tag;
