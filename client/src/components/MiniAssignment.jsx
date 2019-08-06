/** @jsx jsx */
import React from "react";
import { jsx } from "@emotion/core";
import { useUser, useSolutions } from "../redux/selector";
import { Redirect } from "@reach/router";
import { Card } from "../components/UI/Ui";
import { Button } from "../components/UI/Buttons";
import { SentIcon, SavedIcon, PendingIcon } from "./UI/Icons";

function MiniAssignment({ miniassignment, handleOpenModalClick }) {
  const user = useUser();

  const solutions = useSolutions();
  if (!user.currentUser.name) return <Redirect to="/" noThrow />;
  const solutionsIds = Object.values(solutions).map(solution => {
    return solution.sublesson_id;
  });
  function verifyStatusSolution() {
    let status = "pending";

    if (solutionsIds.includes(miniassignment.id)) {
      const filtrado = Object.values(solutions).find(solution => {
        return solution.sublesson_id === miniassignment.id;
      });
      status = filtrado.status;
    }

    return status;
  }
  const miniassigmentStatus = verifyStatusSolution();
  console.log("status ", miniassigmentStatus);
  if (!user.currentUser.name) return <Redirect to="/" noThrow />;

  return (
    <Card
      styles={{
        display: "grid",
        gridTemplateColumns: "1fr 100px",
        margin: "30px 0px",
        width: "auto",
        minHeight: "200px",
        padding: "0px"
      }}
    >
      <div
        css={{
          padding: "25px",
          display: "flex",
          flexDirection: "column",
          justifyContent: "space-between"
        }}
      >
        <div>
          <h4 css={{ margin: "0px", marginBottom: "20px" }}>
            {miniassignment.title}
          </h4>
          <p>{miniassignment.content}</p>

          <Button
            css={{ marginTop: "16px" }}
            onClick={handleOpenModalClick}
            miniassigment={miniassignment.id}
          >
            Create
          </Button>
        </div>
        <div />
      </div>
      <div css={{ display: "flex", padding: "25px" }}>
        {miniassigmentStatus === "pending" && <PendingIcon />}
        {miniassigmentStatus === "saved" && <SavedIcon />}
        {miniassigmentStatus === "sent" && <SentIcon />}
      </div>
    </Card>
  );
}

export default MiniAssignment;
