/**@jsx jsx */
import React from "react";
import { jsx } from "@emotion/core";
import { Link } from "@reach/router";
import { useLesson, useSublessons } from "../redux/selector";
import { Tab, Tabs, TabList, TabPanel } from "react-tabs";
import "react-tabs/style/react-tabs.css";

function TopNavigation({ moduleId, lessonId }) {
  const TAGS = ["OVERVIEW", "WORKSHOP", "M-ASSIGN", "EXERCISES", "BLOG"];
  const lesson = useLesson(lessonId);
  const sublessons = useSublessons(lessonId);

  return (
    <div
      css={{
        display: "flex",
        justifyContent: "space-between",
        color: "black",
        fontSize: ".9em",
        fontWeight: "bold"
      }}
    >
      {lesson.sublessons.map(sublessonId => {
        return (
          <Link
            to={`/lessons/module/${moduleId}/lesson/${lessonId}/sublesson/${sublessonId}`}
            key={sublessonId}
          >
            <Tab>{TAGS[sublessons[sublessonId].tag_id - 1]}</Tab>
          </Link>
        );
      })}
    </div>
  );
}

export default TopNavigation;
