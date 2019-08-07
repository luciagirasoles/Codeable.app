/**@jsx jsx */
import React from "react";
import { jsx } from "@emotion/core";

const space = {
  margin: 0,
  marginLeft: "10px"
};

function Grade({
  tipo,
  week,
  codeReview,
  performance,
  testing,
  dryCode,
  onClick
}) {
  function handleClick() {
    onClick(tipo === "EP" ? week : "GATE");
  }

  let prom = (codeReview + performance + testing + dryCode) / 4;

  return (
    <button
      css={{
        display: "flex",
        justifyContent: "space-between",
        marginTop: tipo === "GATE" ? "1rem" : 0,
        border: "none",
        background: "none",
        fontSize: "1em",
        padding: "5px"
      }}
      onClick={handleClick}
    >
      <div>
        {tipo === "EP" ? (
          <span css={space} aria-label={`Extended Project ${week}`}>
            Extended Project <strong>{`${week}`}</strong>
          </span>
        ) : (
          <strong css={space}>{tipo}</strong>
        )}
      </div>

      {tipo === "GATE" ? (
        <strong css={{ fontSize: "1.2em" }}>
          {" "}
          {((codeReview + performance + testing + dryCode) / 4).toFixed(2)}
        </strong>
      ) : (
        <span>
          {((codeReview + performance + testing + dryCode) / 4).toFixed(2)}
        </span>
      )}
    </button>
  );
}

export default Grade;
