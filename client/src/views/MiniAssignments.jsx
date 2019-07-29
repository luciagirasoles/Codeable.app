/** @jsx jsx */
import { jsx } from "@emotion/core";
import Module from "../components/Module";
import { useUser, useModulos, useMiniAssigments } from "../redux/selector";
import MainLayout from "../components/layouts/MainLayout";
import { useEffect } from "react";
import { Redirect } from "@reach/router";
import { useRequestModulos } from "../redux/action-hook";
import MiniAssignment from "../components/MiniAssignment";
import { ClassLink } from "../components/ClassLink";

function MiniAssignments() {
  const user = useUser();
  const miniassigments = useMiniAssigments();
  console.log(miniassigments);

  if (!user.currentUser.name) return <Redirect to="/" noThrow />;

  return (
    <MainLayout>
      <h1>MiniAssignments</h1>

      {miniassigments &&
        Object.values(miniassigments).map(miniassignment => {
          return <MiniAssignment miniassignment={miniassignment} />;
        })}
    </MainLayout>
  );
}

export default MiniAssignments;
