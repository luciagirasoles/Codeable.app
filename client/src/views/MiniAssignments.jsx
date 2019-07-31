/** @jsx jsx */
import { jsx } from "@emotion/core";
import Module from "../components/Module";
import {
  useUser,
  useModulos,
  useMiniAssigments,
  useSolutions
} from "../redux/selector";
import MainLayout from "../components/layouts/MainLayout";
import { useEffect } from "react";
import { Redirect } from "@reach/router";
import {
  useRequestModulos,
  useRequestSolutions,
  useCreateSolution,
  useUpdateSolution
} from "../redux/action-hook";
import MiniAssignment from "../components/MiniAssignment";
import { ClassLink } from "../components/ClassLink";
import { Button } from "../components/Ui";

function MiniAssignments() {
  const user = useUser();

  const miniassigments = useMiniAssigments();
  const requestSolutions = useRequestSolutions();
  const solutions = useSolutions();
  const createSolution = useCreateSolution();
  const updateSolution = useUpdateSolution();

  useEffect(() => {
    requestSolutions();
  }, []);

  function handleCreateClick() {
    createSolution({
      content: "test 1",
      status: "pending",
      user_id: user.currentUser.id,
      sublesson_id: 5
    });
  }
  function handleUpdateClick() {
    updateSolution({
      id: 1,
      status: "saved"
    });
  }

  if (!user.currentUser.name) return <Redirect to="/" noThrow />;

  return (
    <MainLayout>
      <h1
        css={{
          margin: "0px",
          fontWeight: "inherit",
          fontSize: "20px",
          paddingBottom: "30px"
        }}
      >
        <b>MiniAssignments</b>
      </h1>

      {miniassigments &&
        Object.values(miniassigments).map(miniassignment => {
          return (
            <MiniAssignment
              miniassignment={miniassignment}
              handleCreateClick={handleCreateClick}
              handleUpdateClick={handleUpdateClick}
            />
          );
        })}
    </MainLayout>
  );
}

export default MiniAssignments;
