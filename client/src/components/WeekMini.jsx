/**@jsx jsx */
import React from "react";
import { jsx } from "@emotion/core";
import { Card } from "./UI/Ui";
import { useSolutions } from "../redux/selector";

function WeekMini() {
  const solutions = useSolutions();
  const days = ["Mon", "Tue", "Wed", "Thu", "Fri"];
  const w1 = [1, 1, 1, 3, 4];

  const db = [
    {
      week: "w1",
      score: [1, 1, 1, 3, 4]
    },
    {
      week: "w2",
      score: [3, 1, 4, 3, 4]
    },
    {
      week: "w3",
      score: [4, 1, 4, 3, 4]
    },
    {
      week: "w4",
      score: [4, 3, 3, 3, 4]
    }
  ];

  const cellStyle = {
    minWidth: "80px"
  };

  const rowStyle = {
    display: "flex",
    textAlign: "center"
  };

  return (
    <Card css={{ marginBottom: "1rem", width: "45%" }}>
      <div css={rowStyle}>
        <div css={cellStyle}>/</div>
        {days.map(day => (
          <div css={cellStyle}>{day}</div>
        ))}
      </div>
      {db.map(weekObj => (
        <div css={rowStyle}>
          <div css={cellStyle}>{weekObj.week}</div>
          {weekObj.score.map(score => (
            <div css={cellStyle}>{score}</div>
          ))}
        </div>
      ))}
    </Card>
  );
}

export default WeekMini;
