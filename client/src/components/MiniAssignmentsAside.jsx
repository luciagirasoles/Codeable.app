/** @jsx jsx */
import React from "react";
import { jsx } from "@emotion/core";
import { Card } from "./UI/Ui";
import { Button, ButtonOrange, ButtonBlue } from "./UI/Buttons";
import { useSolutions, useMiniAssignments } from "../redux/selector";
import { arrayToObject } from "../helpers";

function MiniAssignmentsAside({ styles, setMiniassignments }) {
  const miniassignments = useMiniAssignments();

  const solutions = useSolutions();

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
      css={{ display: "flex", flexDirection: "column", alignItems: "center" }}
    >
      <p
        css={{
          padding: "20px"
        }}
      >
        <b>Filters</b>
      </p>
      <ButtonBlue css={{ fontSize: "15px" }} onClick={filterPending}>
        Saved
      </ButtonBlue>
      <ButtonOrange css={{ fontSize: "15px" }} onClick={filterSent}>
        Sent
      </ButtonOrange>
      <Button css={{ fontSize: "15px" }} onClick={reset}>
        All
      </Button>
    </div>
  );
}

export default MiniAssignmentsAside;
