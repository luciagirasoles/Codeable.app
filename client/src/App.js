/** @jsx jsx */
import React from "react";
import { jsx } from "@emotion/core";
import Login from "./views/login";
function App() {
  const container = {
    display: "grid"
  };
  return (
    <div css={container}>
      <Login />
    </div>
  );
}

export default App;
