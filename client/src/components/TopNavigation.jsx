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
    <>
      {lesson.sublessons.map(sublessonId => {
        return (
          <Tab>
            <Link
              to={`/lessons/module/${moduleId}/lesson/${lessonId}/sublesson/${sublessonId}`}
              key={sublessonId}
            >
              {TAGS[sublessons[sublessonId].tag_id - 1]}
            </Link>
          </Tab>
        );
      })}
    </>
  );
}

export default TopNavigation;
