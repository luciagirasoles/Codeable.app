/** @jsx jsx */
import React from "react";
import { jsx } from "@emotion/core";
import { FiUser, FiLock } from "react-icons/fi";

import Background from "../assets/background-login.jpeg";

function Login(props) {
  const [email, setEmail] = React.useState("mnavarro@able.co");
  const [password, setPassword] = React.useState("123456");
  const [errorMessage, setErrorMessage] = React.useState(null);

  function handleEmailChange(event) {
    setEmail(event.target.value);
  }

  function handlePasswordChange(event) {
    setPassword(event.target.value);
  }

  function handleSubmit(e) {
    e.preventDefault();
  }

  const inputIconCss = {
    border: "1.5px solid #87909e",
    display: "inline-block",
    marginBottom: "1em",
    borderRadius: "5px",
    padding: "0.5em",
    ":focus-within": {
      borderBottom: "1.5px solid #4ea64e"
    }
  };
  const inputCss = {
    fontSize: "1em",
    border: "none",
    outline: "none",
    paddingLeft: "1em",
    width: "calc(100% - 1em)"
  };
  const aCss = {};

  return (
    <section
      css={{
        display: "flex",
        justifyContent: "center",
        alignItems: "center",
        height: "100vh",
        flexDirection: "column",
        backgroundImage: `url(${Background})`,
        backgroundColor: "#ffffff",
        backgroundSize: "cover"
      }}
    >
      <div
        css={{
          display: "flex",
          flexDirection: "column",
          maxWidth: "90%",
          minWidth: "20em",
          minHeight: "10em",
          padding: "1em",
          backgroundColor: "white",
          borderRadius: "5px"
        }}
      >
        <h1 css={{ textAlign: "center", fontSize: "2em" }}>
          {"{"} Codeable {"}"}
        </h1>

        <form
          onSubmit={handleSubmit}
          css={{
            display: "flex",
            flexDirection: "column",
            margin: "0.5em"
          }}
        >
          <div css={inputIconCss}>
            <span css={{ display: "table-cell" }}>
              <FiUser />
            </span>
            <span
              css={{ margin: "0.5em", display: "table-cell", width: "100%" }}
            >
              <input
                id="email"
                type="email"
                name="email"
                aria-label="email"
                value={email}
                onChange={handleEmailChange}
                css={inputCss}
                autoFocus
              />
            </span>
          </div>
          <div css={inputIconCss}>
            <span css={{ display: "table-cell" }}>
              <FiLock />
            </span>
            <span
              css={{ margin: "0.5em", display: "table-cell", width: "100%" }}
            >
              <input
                id="password"
                type="password"
                name="password"
                aria-label="password"
                value={password}
                onChange={handlePasswordChange}
                css={inputCss}
              />
            </span>
          </div>
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
            Log In
          </button>
          {errorMessage && (
            <div
              css={{
                color: "red",
                textAlign: "center",
                margin: "0.5em",
                fontSize: "0.95em"
              }}
            >
              Error: {errorMessage}
            </div>
          )}
          <div css={{ display: "flex", justifyContent: "space-between" }}>
            <a href="#" css={aCss}>
              Change Password
            </a>
            <a href="#" css={aCss}>
              Forgot Password?
            </a>
          </div>
        </form>
      </div>
    </section>
  );
}
export default Login;
