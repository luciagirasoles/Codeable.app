/** @jsx jsx */
import React from "react";
import { jsx } from "@emotion/core";
import { useUser } from "../redux/selector";
import { useEffect } from "react";
import { Redirect } from "@reach/router";
import { Card } from "../components/Ui";

function MiniAssignment({ miniassignment }) {
  const user = useUser();

  if (!user.currentUser.name) return <Redirect to="/" noThrow />;

  return (
    <>
      <h1>MiniAssignments</h1>
      <Card>
        <p>{miniassignment.title}</p>
      </Card>
    </>
  );
}

export default MiniAssignment;
