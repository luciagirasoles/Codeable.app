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
          css={{ display: "flex", justifyContent: "space-between" }}
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
          fontSize: "1.5rem",
          marginTop: "20px"
        }}
      >
        <FaArrowAltCircleLeft onClick={onClick} />
      </div>
    </section>
  );
}

export default GradeDetails;
