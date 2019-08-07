/**@jsx jsx */
import React from "react";
import { jsx } from "@emotion/core";
import { Card } from "./UI/Ui";

function WeekMini({ title, score }) {
  const rowStyle = {
    display: "flex",
    textAlign: "center",
    justifyContent: "space-between",
    margin: "5px 0"
  };

  return (
    <>
      <Card css={{ marginBottom: "1rem", width: "40%" }}>
        <h2>{title}</h2>
        <section css={{ marginTop: "15px" }}>
          {score.map(value => {
            return (
              <div css={rowStyle}>
                <span>{value.title}</span>
                <span>{value.score}</span>
              </div>
            );
          })}
        </section>
      </Card>
    </>
  );
}

export default WeekMini;
