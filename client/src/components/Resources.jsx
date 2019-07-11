/**@jsx jsx */
import React from "react";
import { jsx } from "@emotion/core";
import Resource from "./Resource";

function Resources({ title, mainResource, extraResource }) {
  return (
    <div
      css={{
        width: "95%",
        margin: "40px auto"
      }}
    >
      <h3>{title}</h3>
      <div css={{ marginLeft: "20px", marginTop: "20px" }}>
        {mainResource.map((element, index) => {
          return (
            <Resource tagname={element.tag} key={index} title={element.title} />
          );
        })}
        <p css={{ fontWeight: "bold", fontSize: ".8em", marginTop: "30px" }}>
          EXTRA
        </p>
        {extraResource.map((element, index) => {
          return (
            <Resource tagname={element.tag} key={index} title={element.title} />
          );
        })}
      </div>
    </div>
  );
}

export default Resources;
