/**@jsx jsx */
import React from "react";
import { jsx } from "@emotion/core";
import { Link } from "@reach/router";

function TopNavigation() {
  return (
    <div
      css={{
        display: "flex",
        justifyContent: "space-between",
        color: "white",
        fontSize: ".9em",
        fontWeight: "bold",
        marginBottom: "100px"
      }}
    >
      <Link
        to="#"
        css={{
          backgroundColor: "#163236",
          padding: "5px 10px",
          borderRadius: "10px"
        }}
      >
        OVERVIEW
      </Link>
      <Link
        to="#"
        css={{
          backgroundColor: "#163236",
          padding: "5px 10px",
          borderRadius: "10px"
        }}
      >
        WORKSHOP
      </Link>
      <Link
        to="#"
        css={{
          backgroundColor: "#163236",
          padding: "5px 10px",
          borderRadius: "10px"
        }}
      >
        M-ASSIGN
      </Link>
      <Link
        to="#"
        css={{
          backgroundColor: "#163236",
          padding: "5px 10px",
          borderRadius: "10px"
        }}
      >
        EXERCISES
      </Link>
      <Link
        to="#"
        css={{
          backgroundColor: "#163236",
          padding: "5px 10px",
          borderRadius: "10px"
        }}
      >
        BLOG
      </Link>
    </div>
  );
}

export default TopNavigation;
