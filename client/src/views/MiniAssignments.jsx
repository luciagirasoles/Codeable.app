/** @jsx jsx */
import { jsx } from "@emotion/core";
import React from "react";
import Module from "../components/Module";
import {
  useUser,
  useModulos,
  useMiniAssignments,
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
import MiniAssignmentsAside from "../components/MiniAssignmentsAside";
import { ClassLink } from "../components/ClassLink";
import { Button, Card } from "../components/Ui";

function MiniAssignments() {
  const user = useUser();

  const storedMiniassignments = useMiniAssignments();
  const requestSolutions = useRequestSolutions();
  const solutions = useSolutions();
  const createSolution = useCreateSolution();
  const updateSolution = useUpdateSolution();

  const [miniassignments, setMiniassignments] = React.useState(
    storedMiniassignments
  );

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
      <div
        css={{
          display: "grid",
          gridTemplateColumns: "1fr 250px",
          gridGap: "70px",
          height: "100%"
        }}
      >
        <div>
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

          {miniassignments &&
            Object.values(miniassignments).map(miniassignment => {
              return (
                <MiniAssignment
                  miniassignment={miniassignment}
                  handleCreateClick={handleCreateClick}
                  handleUpdateClick={handleUpdateClick}
                />
              );
            })}
        </div>

        <MiniAssignmentsAside
          setMiniassignments={setMiniassignments}
          miniassignments={miniassignments}
        />
      </div>
    </MainLayout>
  );
}

export default MiniAssignments;
