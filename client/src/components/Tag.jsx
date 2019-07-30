/** @jsx jsx*/
import React from "react";
import { jsx } from "@emotion/core";

const Tag = ({ tagId }) => {
  let color;
  let tagText;
  switch (tagId) {
    case 1:
      color = "mediumseagreen";
      tagText = "overview";
      break;
    case 2:
      color = "lightseagreen";
      tagText = "workshop";
      break;
    case 3:
      color = "goldenrod";
      tagText = "m-assign";
      break;
    case 4:
      color = "mediumpurple";
      tagText = "exercises";
      break;
    default:
      color = "indianred";
      tagText = "blog";
      break;
  }

  return (
    <span
      css={{
        fontSize: ".8em",
        fontWeight: "bold",
        letterSpacing: "1px",
        backgroundColor: color,
        display: "inline-block",
        padding: "4px 7px",
        borderRadius: "5px"
      }}
    >
      {tagText}
    </span>
  );
};

export default Tag;
