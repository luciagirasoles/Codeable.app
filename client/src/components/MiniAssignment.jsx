/** @jsx jsx */
import React from "react";
import { jsx } from "@emotion/core";
import { useUser } from "../redux/selector";
import { useEffect } from "react";
import { Redirect } from "@reach/router";
import { Card, Button } from "../components/Ui";

function MiniAssignment({
  miniassignment,
  handleCreateClick,
  handleUpdateClick
}) {
  const user = useUser();

  if (!user.currentUser.name) return <Redirect to="/" noThrow />;

  return (
    <>
      <Card>
        <p>{miniassignment.title}</p>
        <Button
          onClick={handleCreateClick}
          style={{ backgroundColor: "gray", fontSize: "medium" }}
        >
          Save Solution
        </Button>
        <Button onClick={handleUpdateClick}>Send Solution</Button>
      </Card>
    </>
  );
}

export default MiniAssignment;
