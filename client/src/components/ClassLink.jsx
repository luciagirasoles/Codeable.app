import React from "react";
import { Link } from "@reach/router";

function ClassLink({ title, sublessonId, lessonId }) {
  let url = `/lessons/module/1/lesson/${lessonId}/sublesson/${sublessonId}`;

  return <Link to={url}>{title}</Link>;
}

export default ClassLink;
