/** @jsx jsx */
import React from "react";
import { jsx } from "@emotion/core";
import { useUser, useSolutions } from "../redux/selector";
import { useUpdateSolution } from "../redux/action-hook";
import { Redirect, navigate } from "@reach/router";
import { Card } from "../components/UI/Ui";
import {
  ButtonOrange,
  ButtonDisabled,
  ButtonBlue,
  Button
} from "../components/UI/Buttons";
import { SentIcon, SavedIcon, PendingIcon } from "./UI/Icons";

function MiniAssignment({ miniassignment, handleOpenModalClick }) {
  const user = useUser();

  const solutions = useSolutions();
  const updateSolution = useUpdateSolution();

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

  function obtainSolutionId() {
    const id = Object.values(solutions).find(solution => {
      return solution.sublesson_id === miniassignment.id;
    }).id;

    return id;
  }

  function obtainSolutionContent() {
    const id = Object.values(solutions).find(solution => {
      return solution.sublesson_id === miniassignment.id;
    }).id;
    return solutions[id].content;
  }

  function handleSentSolutionClick() {
    updateSolution({
      id: obtainSolutionId(),
      status: "sent"
    });
  }
  const miniassigmentStatus = verifyStatusSolution();
  if (!user.currentUser.name) return <Redirect to="/" noThrow />;

  return (
    <Card
      styles={{
        display: "grid",
        gridTemplateColumns: "1fr 100px",
        margin: "30px 0px",
        width: "auto",
        minHeight: "200px",
        padding: "0px",
        "@media (max-width: 760px)": {
          gridTemplateColumns: "1fr"
        }
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

          {miniassigmentStatus === "pending" && (
            <ButtonOrange
              css={{ marginTop: "16px" }}
              onClick={handleOpenModalClick}
              miniassigment={miniassignment.id}
              status="pending"
            >
              Create
            </ButtonOrange>
          )}
          {miniassigmentStatus === "saved" && (
            <>
              <ButtonBlue
                css={{ marginTop: "16px", marginRight: "20px" }}
                onClick={handleOpenModalClick}
                miniassigment={miniassignment.id}
                status="saved"
                solcontent={obtainSolutionContent()}
              >
                Edit
              </ButtonBlue>
              <Button onClick={handleSentSolutionClick}>Sent</Button>
            </>
          )}
          {miniassigmentStatus === "sent" && (
            <ButtonDisabled css={{ marginTop: "16px" }}>Sent</ButtonDisabled>
          )}
        </div>
        <div />
      </div>
      <div
        css={{
          display: "flex",
          padding: "25px",
          "@media (max-width: 760px)": {
            padding: 0,
            position: "absolute"
          }
        }}
      >
        {miniassigmentStatus === "pending" && <PendingIcon />}
        {miniassigmentStatus === "saved" && <SavedIcon />}
        {miniassigmentStatus === "sent" && <SentIcon />}
      </div>
    </Card>
  );
}

export default MiniAssignment;
