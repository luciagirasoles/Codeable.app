/** @jsx jsx*/
import React from "react";
import { jsx } from "@emotion/core";

const Tag = ({ tagname }) => {
  let tag = tagname.toUpperCase();
  let color;
  switch (tag) {
    case "OVERVIEW":
      color = "green";
      break;
    case "WORKSHOP":
      color = "blue";
      break;
    case "M-ASSIGN":
      color = "orange";
      break;
    case "EXERCISES":
      color = "purple";
      break;
    default:
      color = "brown";
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
      {tag}
    </span>
  );
};

export default Tag;
