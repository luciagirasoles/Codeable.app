/** @jsx jsx */
import React, { useState, useEffect } from "react";
import { jsx } from "@emotion/core";
import { InputLink } from "./UI/Inputs";
import { Label } from "./UI/Ui";
import { Button, ButtonRed } from "./UI/Buttons";
import { useUser, useUsersList, useSolutions } from "../redux/selector";
import { useCreateSolution, useUpdateSolution } from "../redux/action-hook";
import Select from "react-dropdown-select";

function Solution({
  styles,
  handleCloseModalClick,
  miniassignment,
  status,
  solcontent
}) {
  const currentuser = useUser();
  const usersList = useUsersList();
  const solutions = useSolutions();
  const createSolution = useCreateSolution();
  const updateSolution = useUpdateSolution();
  const [userListFormatted, setUserListFormatted] = useState([]);
  const [solutionContent, setSolutionContent] = useState(
    solcontent ? solcontent : ""
  );
  const [collaborators, setCollaborators] = useState([]);
  function fillUserList() {
    const list = Object.values(usersList).flatMap(user => {
      if (user.id !== currentuser.currentUser.id) {
        return [{ key: user.id, name: user.name, value: user.id }];
      } else {
        return [];
      }
    });
    return list;
  }

  function initialValues() {
    setCollaborators([]);
    setSolutionContent("");
    handleCloseModalClick();
  }
  useEffect(() => {
    setUserListFormatted(fillUserList());
  }, []);

  function obtainSolutionId() {
    const id = Object.values(solutions).find(solution => {
      return solution.sublesson_id === miniassignment.id;
    }).id;

    return id;
  }

  function handleSolutionContentChange(event) {
    setSolutionContent(event.target.value);
  }

  function handleCollaboratorsContentChange(value) {
    setCollaborators(value);
  }
  function handleCancelClick(event) {
    event.preventDefault();
    initialValues();
  }
  function handleSubmit(event) {
    event.preventDefault();

    if (status === "pending") {
      createSolution({
        content: solutionContent,
        status: "saved",
        user_id: currentuser.currentUser.id,
        sublesson_id: miniassignment.id
      });

      collaborators.forEach(user => {
        createSolution({
          content: solutionContent,
          status: "saved",
          user_id: user.id,
          sublesson_id: miniassignment.id
        });
      });
    } else {
      updateSolution({
        id: obtainSolutionId(),
        content: solutionContent,
        status: "saved"
      });
    }
    initialValues();
  }
  return (
    <>
      <form>
        <h1>{miniassignment.title}</h1>
        <Label aria-label="URL">
          URL:
          <InputLink
            value={solutionContent}
            onChange={handleSolutionContentChange}
            autoFocus
            required
          />
        </Label>
        {status === "pending" && (
          <Label aria-label="Collaborators">
            Collaborators
            <Select
              style={{ font: "inherit" }}
              multi
              placeholder="My collaborators in this Miniassigment"
              closeOnSelect={true}
              clearable={true}
              addPlaceholder="+ click to add"
              options={userListFormatted}
              labelField="name"
              values={collaborators}
              color="#4ea64e"
              onChange={handleCollaboratorsContentChange}
            />
          </Label>
        )}
        <div css={{ display: "flex", justifyContent: "space-evenly" }}>
          <ButtonRed onClick={handleCancelClick}>Cancel</ButtonRed>
          <Button type="submit" onClick={handleSubmit}>
            Save
          </Button>
        </div>
      </form>
    </>
  );
}

export default Solution;
