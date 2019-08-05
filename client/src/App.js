/** @jsx jsx */
import React from "react";
import { Router } from "@reach/router";
import { jsx } from "@emotion/core";
import Lessons from "./views/Lessons";
import Forgot from "./views/Forgot";
import ResetConfirmation from "./views/ResetConfirmation";
import ResetPassword from "./views/ResetPassword";
import ResetSuccessful from "./views/ResetSuccessful";
import Lesson from "./views/Lesson";
import ChangePassword from "./views/ChangePassword";
import MiniAssignments from "./views/MiniAssignments";
import Grades from "./views/Grades";
import TitleApplication from "./views/TitleApplication";
import { useRequestModulos } from "./redux/action-hook";
import { Loading } from "./components/UI/Ui";

const Login = React.lazy(() => import("./views/Login"));

function App() {
  const requestModulos = useRequestModulos();

  React.useEffect(() => {
    requestModulos();
  }, [requestModulos]);

  return (
    <React.Suspense fallback={<Loading />}>
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
        <TitleApplication path="/titleapp" />
        <Grades path="/grades" />
      </Router>
    </React.Suspense>
  );
}

export default App;
