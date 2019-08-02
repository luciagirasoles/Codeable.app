/** @jsx jsx */
import React from "react";
import { jsx } from "@emotion/core";
import { useUser } from "../redux/selector";
import { useEffect } from "react";
import { Redirect } from "@reach/router";
import { Card, Tag, Button, Collaborator } from "../components/Ui";
import { TiPen } from "react-icons/ti";

function InputSolution({ styles, ...props }) {
  return (
    <div
      css={{
        border: "1.5px solid #87909e",
        display: "inline-block",
        borderRadius: "5px",
        padding: "0.2em",
        ":focus-within": {
          borderBottom: "1.5px solid #4ea64e"
        }
      }}
    >
      <span css={{ display: "table-cell" }}>
        <TiPen />
      </span>
      <span css={{ margin: "0.5em", display: "table-cell", width: "100%" }}>
        <input
          {...props}
          type="email"
          css={{
            fontSize: "1em",
            border: "none",
            outline: "none",
            paddingLeft: "1em",
            width: "calc(100% - 1em)",
            ...styles
          }}
        />
      </span>
    </div>
  );
}

function MiniAssignment({
  miniassignment,
  handleCreateClick,
  handleUpdateClick
}) {
  const user = useUser();

  if (!user.currentUser.name) return <Redirect to="/" noThrow />;

  return (
    <Card
      styles={{
        display: "grid",
        gridTemplateColumns: "400px 100px",
        margin: "30px 0px",
        width: "500px",
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
        </div>

        <InputSolution />
      </div>
      <div
        css={{
          backgroundColor: "rgb(245,245,245)",
          padding: "25px 10px",
          display: "flex",
          flexDirection: "column",
          justifyContent: "space-between",
          alignItems: "center"
        }}
      >
        <div
          css={{
            display: "flex",
            flexDirection: "column",
            alignItems: "flex-end"
          }}
        >
          <Tag
            styles={{
              margin: "5px 0px",
              color: "white",
              backgroundColor: "rgb(146,111,219)"
            }}
          >
            M-41
          </Tag>
          <Tag
            styles={{
              margin: "5px 0px",
              color: "white",
              backgroundColor: "rgb(146,111,219)"
            }}
          >
            New
          </Tag>

          <div
            css={{
              margin: "5px 0px",
              display: "flex",
              flexWrap: "wrap",
              justifyContent: "flex-end",
              width: "60px"
            }}
          >
            <Collaborator>R</Collaborator>
            <Collaborator styles={{ backgroundColor: "goldenrod" }}>
              M
            </Collaborator>
            <Collaborator styles={{ backgroundColor: "indianred" }}>
              C
            </Collaborator>
            <Collaborator
              styles={{
                backgroundColor: "rgb(200,200,200)",
                border: "2px solid rgb(180,180,180)"
              }}
            >
              +
            </Collaborator>
          </div>
        </div>

        <Button
          styles={{
            fontSize: ".8em",
            margin: "0px",
            backgroundColor: "rgb(63,169,243)",
            border: "2px solid rgb(101,185,244)",
            alignSelf: "auto",
            ":hover": {
              backgroundColor: "rgb(72, 172, 243)",
              cursor: "pointer",
              boxShadow: "2px 2px 2px -2px rgba(64,64,64,0.74)"
            }
          }}
        >
          Send
        </Button>
      </div>
    </Card>
  );
}

export default MiniAssignment;
