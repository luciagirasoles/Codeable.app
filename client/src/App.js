/** @jsx jsx */
import React from "react";
import { Router } from "@reach/router";
import { jsx } from "@emotion/core";
import Login from "./views/Login";
import Lessons from "./views/Lessons";
import Forgot from "./views/Forgot";
import ResetConfirmation from "./views/ResetConfirmation";
import ResetPassword from "./views/ResetPassword";
import ResetSuccessful from "./views/ResetSuccessful";
import Lesson from "./views/Lesson";
import ChangePassword from "./views/ChangePassword";
import MiniAssignments from "./views/MiniAssignments";

function App() {
  const container = {
    display: "grid"
  };
  return (
    <div css={container}>
      <Router>
        <Login path="/" />
        <Lessons path="lessons" />
        <Lesson path="lessons/module/:moduleId/lesson/:lessonId/sublesson/:sublessonId" />
        <Forgot path="/forgot" />
        <MiniAssignments path="miniassignments" />
        <ResetConfirmation path="/resetconfirm/:email" />
        <ResetPassword path="/resetpassword/:token" />
        <ResetSuccessful path="/resetsuccessful/" />
        <ChangePassword path="/changepassword" />
      </Router>
    </div>
  );
}

export default App;
