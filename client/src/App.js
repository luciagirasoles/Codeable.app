/** @jsx jsx */
import React from "react";
import { Router } from "@reach/router";
import { jsx } from "@emotion/core";
import Login from "./views/Login";
import Classes from "./views/Classes";
import Forgot from "./views/Forgot";
import ResetConfirmation from "./views/ResetConfirmation";
import ResetPassword from "./views/ResetPassword";
import ResetSuccessful from "./views/ResetSuccessful";
import Lesson from "./views/Lesson";
import ChangePassword from "./views/ChangePassword";

function App() {
  const container = {
    display: "grid"
  };
  return (
    <div css={container}>
      <Router>
        <Login path="/" />
        <Classes path="lessons" />
        <Lesson path="lessons/module/:moduleIndex/lesson/:index" />
        <Forgot path="/forgot" />
        <ResetConfirmation path="/resetconfirm" />
        <ResetPassword path="/resetpassword/:token" />
        <ResetSuccessful path="/resetsuccessful/" />
        <ChangePassword path="/changepassword" />
      </Router>
    </div>
  );
}

export default App;
