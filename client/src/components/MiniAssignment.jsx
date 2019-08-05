/** @jsx jsx */
import React from "react";
import { jsx } from "@emotion/core";
import { useUser } from "../redux/selector";
import { Redirect } from "@reach/router";
import { Card } from "../components/UI/Ui";
import { Button } from "../components/UI/Buttons";

function MiniAssignment({ miniassignment, handleOpenModalClick }) {
  const user = useUser();

  if (!user.currentUser.name) return <Redirect to="/" noThrow />;

  return (
    <Card
      styles={{
        display: "grid",
        gridTemplateColumns: "1fr 100px",
        margin: "30px 0px",
        width: "auto",
        height: "250px",
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
      </div>
    </Card>
  );
}

export default MiniAssignment;
