/** @jsx jsx */
import React from "react";
import Login from "./views/login";
import { jsx } from "@emotion/core";
import Classes from "./views/Classes";
import { Router } from "@reach/router";
import Forgot from "./views/Forgot";

function App() {
  const container = {
    display: "grid"
  };
  return (
    <div css={container}>
      <Router>
        <Login path="/" />
        <Classes path="/lessons" />
        <Forgot path="/forgot"/>
      </Router>
    </div>
  );
}

export default App;
