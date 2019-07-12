/** @jsx jsx */
import React from "react";
import { jsx } from "@emotion/core";
import Background from "../assets/background-login.jpeg";

function Forgot() {
  function handleSubmit(e) {
    e.preventDefault();
    console.log(e);
  }

  const inputCss = {
    fontSize: "1em",
    border: "none",
    outline: "none",
    paddingLeft: "1em",
    width: "calc(100% - 1em)"
  };

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
      <form
        css={{
          backgroundColor: "white",
          width: "200px",
          height: "200px",
          display: "flex",
          padding: "50px",
          borderRadius: "10px",
          flexDirection: "column",
          justifyContent: "space-around"
        }}
        onSubmit={handleSubmit}
      >
        <h2>Ask for new password</h2>
        <label htmlFor="email">Enter your email</label>
        <input
          name="email"
          type="email"
          css={{
            height: "30px",
            fontSize: "15px",
            marginTop: "20px",
            marginBottom: "20px"
          }}
        />
        <button
          css={{
            border: "none",
            padding: "0.3em",
            backgroundColor: "#4ea64e",
            font: "inherit",
            color: "#FFF",
            fontSize: "1.3em",
            fontWeight: "bold",
            borderRadius: "5px",
            maxWidth: "5em",
            alignSelf: "center",
            marginBottom: "16px",
            ":hover": { backgroundColor: "#157522", cursor: "pointer" }
          }}
        >
          Submit
        </button>
      </form>
    </div>
  );
}

export default Forgot;
