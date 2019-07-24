/** @jsx jsx */
import React from "react";
import { jsx } from "@emotion/core";
import { Link } from "@reach/router";
import { Card } from "../components/Ui";
import HomeLayout from "../components/layouts/HomeLayout";

function ResetSuccessful() {
  return (
    <HomeLayout>
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
            <Link to="/" css={{ color: "#4ea64e", fontWeight: "bold" }}>
              home
            </Link>
          </p>
        </div>
      </Card>
    </HomeLayout>
  );
}

export default ResetSuccessful;
