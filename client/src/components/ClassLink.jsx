import React from "react";
import { Link } from "@reach/router";

function ClassLink({ title, index }) {
  let url = `/lessons/sublesson/${index}/${title
    .replace(/\s+/g, "-")
    .toLowerCase()}`;
  return <Link to={url}>{title}</Link>;
}

export default ClassLink;
