/**@jsx jsx */
import React from "react";
import { jsx } from "@emotion/core";
import Resource from "./Resource";

function Resources({ title, mainResource, extraResource, id }) {
  return (
    <div
      css={{
        width: "95%",
        margin: "40px auto"
      }}
    >
      <h3>{title}</h3>
      <div css={{ marginLeft: "20px", marginTop: "20px" }}>
        {/* [{sub1},{sub2},{sub3}] */}
        {mainResource.map((element, i) => {
          return (
            <Resource
              tag_id={element.tag_id}
              key={i}
              title={element.title}
              id={element.id}
            />
          );
        })}
        <p css={{ fontWeight: "bold", fontSize: ".8em", marginTop: "30px" }}>
          EXTRA
        </p>
        {extraResource.map((element, i) => {
          return (
            <Resource
              tag_id={element.tag_id}
              key={i}
              title={element.title}
              id={id}
            />
          );
        })}
      </div>
    </div>
  );
}

export default Resources;
