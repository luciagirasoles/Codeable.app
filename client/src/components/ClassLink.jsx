import React from "react";
import { Link } from "@reach/router";

function ClassLink({ title, id }) {
  let url = `/lessons/module/1/lesson/${id}`;

  return <Link to={url}>{title}</Link>;
}

export default ClassLink;
