/**@jsx jsx */
import React from "react";
import { jsx } from "@emotion/core";
import Resource from "./Resource";
import { useSublessons, useLesson } from "../redux/selector";

function Resources({ lessonId }) {
  const lesson = useLesson(lessonId);
  const sublessons = useSublessons(lessonId);

  const mainResource = Object.values(sublessons).filter(
    sublesson => sublesson.section === "main"
  );
  const extraResource = Object.values(sublessons).filter(
    sublesson => sublesson.section === "extra"
  );

  return (
    <div
      css={{
        width: "95%",
        margin: "40px auto"
      }}
    >
      <h3>{lesson.title}</h3>
      <div css={{ marginLeft: "20px", marginTop: "20px" }}>
        {mainResource.map((element, i) => {
          return (
            <Resource
              lessonId={lessonId}
              tagId={element.tag_id}
              key={JSON.stringify(element)}
              title={element.title}
              sublessonId={element.id}
            />
          );
        })}
        <p css={{ fontWeight: "bold", fontSize: ".8em", marginTop: "30px" }}>
          EXTRA
        </p>
        {extraResource.map((element, i) => {
          return (
            <Resource
              lessonId={lessonId}
              tagId={element.tag_id}
              key={JSON.stringify(element)}
              title={element.title}
              sublessonId={element.id}
            />
          );
        })}
      </div>
    </div>
  );
}

export default Resources;
