/** @jsx jsx */
import React from "react";
import { jsx } from "@emotion/core";
import { Button, ButtonBlue } from "./UI/Buttons";
import { useSolutions, useMiniAssignments } from "../redux/selector";
import { arrayToObject } from "../helpers";

import useWindowDimensions from "./Hooks/useWindowDimensions";

function MiniAssignmentsAside({ styles, setMiniassignments }) {
  const miniassignments = useMiniAssignments();

  const solutions = useSolutions();

  const { _height, width } = useWindowDimensions();

  function reset() {
    setMiniassignments(miniassignments);
  }

  function filterPending() {
    const pendingSolutions = Object.values(solutions).filter(
      solution => solution.status === "saved"
    );

    const pendingMinis = pendingSolutions.map(
      pending => miniassignments[pending.sublesson_id]
    );

    setMiniassignments(arrayToObject(pendingMinis));
  }

  function filterSent() {
    const sentSolutions = Object.values(solutions).filter(
      solution => solution.status === "sent"
    );
    const sentMinis = sentSolutions.map(
      sent => miniassignments[sent.sublesson_id]
    );

    setMiniassignments(arrayToObject(sentMinis));
  }

  return (
    <div
      css={{
        display: "flex",
        flexDirection: "column",
        alignItems: "center",
        "@media (max-width: 450px)": {
          position: "fixed",
          right: 0
        }
      }}
    >
      <p
        css={{
          padding: "20px"
        }}
      >
        <b>Filters</b>
      </p>
      <ButtonBlue
        css={{
          fontSize: "15px",
          "@media (max-width: 450px)": {
            fontSize: "40px",
            height: "55px",
            width: "55px",
            borderRadius: "50%"
          }
        }}
        title="Edit"
        onClick={filterPending}
      >
        {width > 450 ? "Edit" : "E"}
      </ButtonBlue>
      <Button
        css={{
          fontSize: "15px",
          backgroundColor: "#939393",
          "@media (max-width: 450px)": {
            fontSize: "40px",
            height: "55px",
            width: "55px",
            borderRadius: "50%",
            ":hover": {
              backgroundColor: "#939393"
            }
          }
        }}
        title="Sent"
        onClick={filterSent}
      >
        {width > 450 ? "Saved" : "S"}
      </Button>
      <Button
        css={{
          fontSize: "15px",
          "@media (max-width: 450px)": {
            fontSize: "40px",
            height: "55px",
            width: "55px",
            borderRadius: "50%"
          }
        }}
        title="All"
        onClick={reset}
      >
        {width > 450 ? "All" : "A"}
      </Button>
    </div>
  );
}

export default MiniAssignmentsAside;
