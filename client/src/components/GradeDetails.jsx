/**@jsx jsx */
import React from "react";
import { jsx } from "@emotion/core";
import { FaArrowAltCircleLeft } from "react-icons/fa";

const space = {
  margin: 0,
  marginLeft: "10px"
};

function GradeDetails({
  codeReview,
  performance,
  testing,
  dryCode,
  onClick,
  feedback
}) {
  const details = [
    ["Code Review", codeReview],
    ["Perfomance", performance],
    ["Testing", testing],
    ["Dry Code", dryCode],
    ["Feedback", feedback]
  ];
  return (
    <section css={{ display: "flex", flexDirection: "column" }}>
      {details.map(([title, score]) => (
        <article
          css={{
            display: "flex",
            justifyContent: "space-between",
            padding: "2.5px 0"
          }}
          key={title}
        >
          {score && (
            <>
              <span css={space}>{title}</span>
              <span>{score}</span>
            </>
          )}
        </article>
      ))}

      <div
        css={{
          display: "flex",
          justifyContent: "center",
          fontSize: "1.8rem",
          marginTop: "20px"
        }}
      >
        <FaArrowAltCircleLeft
          css={{
            color: "#4ea64e",
            borderRadius: "50%",
            ":hover": {
              color: "#157522",
              cursor: "pointer",
              boxShadow: "5px 5px 3px -3px rgba(64,64,64,0.74)"
            },
            transition: "all 200ms ease"
          }}
          onClick={onClick}
        />
      </div>
    </section>
  );
}

export default GradeDetails;
