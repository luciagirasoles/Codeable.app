/** @jsx jsx */
import { jsx } from "@emotion/core";
import React, { useMemo, useState, useEffect, useRef } from "react";
import { Redirect } from "@reach/router";
import { createPortal } from "react-dom";

import { useUser, useMiniAssignments } from "../redux/selector";
import { useRequestSolutions, useRequestUsersList } from "../redux/action-hook";

import MiniAssignment from "../components/MiniAssignment";
import MiniAssignmentsAside from "../components/MiniAssignmentsAside";
import Solution from "../components/Solution";

import MainLayout from "../components/layouts/MainLayout";
import { Modal, Card } from "../components/UI/Ui";

function MiniAssignments() {
  const user = useUser();
  const requestSolutions = useRequestSolutions();

  const requestUsersList = useRequestUsersList();
  const [mId, setMID] = useState("");
  const [mStatus, setMStatus] = useState("");
  const [sContent, setSContent] = useState("");
  const storedMiniassignments = useMiniAssignments();

  //Modal functionality
  const $portal = useMemo(() => document.getElementById("portal"), []);
  const [isModalOpen, setIsModalOpen] = useState(false);
  const node = useRef();
  const nodeSelected = useRef();
  function handleOpenModalClick(event) {
    setMID(event.target.getAttribute("miniassigment"));
    setMStatus(event.target.getAttribute("status"));
    setSContent(event.target.getAttribute("solcontent"));
    setIsModalOpen(true);
  }

  function handleCloseModalClick() {
    setMID("");
    setIsModalOpen(false);
  }

  useEffect(() => {
    function handleKeyDown(event) {
      if (event.key !== "Escape" || !isModalOpen) return;
      setIsModalOpen(false);
    }
    window.addEventListener("keydown", handleKeyDown);
    return () => window.removeEventListener("keydown", handleKeyDown);
  }, [isModalOpen]);

  useEffect(() => {
    if (isModalOpen) {
      document.addEventListener("mousedown", handleClickOutside);
    } else {
      document.removeEventListener("mousedown", handleClickOutside);
    }
    return () => {
      document.removeEventListener("mousedown", handleClickOutside);
    };
  }, [isModalOpen]);

  function handleClickOutside(event) {
    if (node.current.contains(event.target)) {
      return;
    }
    setIsModalOpen(false);
  }

  useEffect(() => {
    requestSolutions();
    requestUsersList();
  }, []);

  const [miniassignments, setMiniassignments] = useState(storedMiniassignments);
  useEffect(() => {
    setMiniassignments(storedMiniassignments);
  }, [JSON.stringify(storedMiniassignments)]);

  if (!user.currentUser.name) return <Redirect to="/" noThrow />;

  return (
    <div>
      <MainLayout>
        <div
          css={{
            display: "grid",
            gridTemplateColumns: "1fr 200px",
            gridGap: "30px",
            height: "100%",
            "@media (max-width: 760px)": {
              gridTemplateColumns: "1fr 100px",
              gridGap: "0"
            }
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
                    key={miniassignment.id}
                    miniassignment={miniassignment}
                    handleOpenModalClick={handleOpenModalClick}
                    nodeSelected={nodeSelected}
                  />
                );
              })}
          </div>

          {!!Object.values(miniassignments).length && (
            <MiniAssignmentsAside
              miniassignments={miniassignments}
              setMiniassignments={setMiniassignments}
            />
          )}
        </div>
      </MainLayout>
      {isModalOpen &&
        createPortal(
          <Modal>
            <div ref={node}>
              <Card>
                <Solution
                  handleCloseModalClick={handleCloseModalClick}
                  miniassignment={miniassignments[mId]}
                  status={mStatus}
                  solcontent={sContent}
                />
              </Card>
            </div>
          </Modal>,
          $portal
        )}
    </div>
  );
}

export default MiniAssignments;
