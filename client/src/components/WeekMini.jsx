/**@jsx jsx */
import React from "react";
import { jsx } from "@emotion/core";
import { Card } from "./UI/Ui";

function WeekMini({ title, score }) {
  const rowStyle = {
    display: "flex",
    textAlign: "inherit",
    justifyContent: "space-between",
    margin: "15px 0",
    "@media (max-width: 760px)": {
      margin: "15px 0"
    }
  };

  return (
    <>
      <Card
        css={{
          marginBottom: "1rem",
          width: "40%",
          "@media (max-width: 760px)": {
            width: "90%"
          }
        }}
      >
        <h2>{title}</h2>
        <section css={{ marginTop: "15px" }}>
          {score.map(value => {
            return (
              <div css={rowStyle}>
                <span>{value.title}</span>
                <span
                  css={{
                    display: "flex",
                    flexDirection: "column-reverse",
                    marginLeft: "10px"
                  }}
                >
                  {value.score}
                </span>
              </div>
            );
          })}
        </section>
      </Card>
    </>
  );
}

export default WeekMini;
