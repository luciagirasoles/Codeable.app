/** @jsx jsx */
import React from "react";
import { jsx } from "@emotion/core";
import Background from "../assets/background-login.jpeg";
import { Link } from "@reach/router";
import { Card, Input, Button, Label } from "../components/Ui";

function ResetSuccessful() {
  return (
    <div
      css={{
        display: "flex",
        alignItems: "center",
        justifyContent: "center",
        backgroundImage: `url(${Background})`,
        backgroundColor: "#ffffff",
        backgroundSize: "cover",
        height: "100vh"
      }}
    >
      <Card
        css={{
          display: "flex",
          flexDirection: "column",
          alignItems: "center",
          justifyContent: "space-between",
          width: "500px",
          height: "200px"
        }}
      >
        <div
          css={{
            width: "100%",
            height: "100%",
            display: "flex",
            flexDirection: "column",
            justifyContent: "space-around"
          }}
        >
          <h2>Congratulations !! </h2>
          <p>You successfully updated your password</p>
          <p>
            Go to{" "}
            <Link to="/" css={{ color: "rgb(0,200,100)" }}>
              home
            </Link>
          </p>
        </div>
      </Card>
    </div>
  );
}

export default ResetSuccessful;
