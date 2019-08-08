/** @jsx jsx */
import { useState, useMemo, useEffect, useRef } from "react";
import { createPortal } from "react-dom";
import { jsx } from "@emotion/core";
import { GoSearch } from "react-icons/go";
import { useLogout } from "../redux/action-hook";
import { navigate } from "@reach/router";
import Search from "./Search";
import { Modal, Card } from "./UI/Ui";
import { Dropdown, Image } from "semantic-ui-react";
import faker from "faker";
import { useUser } from "../redux/selector";

const avatar = faker.image.cats();

function Header({ styles }) {
  const $portal = useMemo(() => document.getElementById("portal"), []);
  const [isModalOpen, setIsModalOpen] = useState(false);
  const node = useRef();
  const logout = useLogout();
  const user = useUser();

  //Modal functions
  function handleOpenClick() {
    setIsModalOpen(true);
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

  function changePassword() {
    navigate("/changepassword");
  }

  const trigger = (
    <span>
      <Image
        css={{
          ":hover": {
            boxShadow: "5px 5px 3px -3px rgba(64,64,64,0.74)"
          }
        }}
        avatar
        src={avatar}
        alt="user image"
      />
      {user.currentUser.name}
    </span>
  );

  const options = [
    {
      key: "settings",
      text: "Change Password",
      icon: "settings",
      onClick: changePassword
    },
    { key: "sign-out", text: "Sign Out", icon: "sign out", onClick: logout }
  ];

  return (
    <div
      css={{
        display: "flex",
        justifyContent: "flex-end",
        padding: "10px",
        ...styles
      }}
    >
      <GoSearch
        css={{
          fontSize: "2.3em",
          alignSelf: "center",
          marginRight: "20px",
          cursor: "pointer",
          padding: "7px",
          borderRadius: "50%",
          transition: "all 200ms ease",
          ":hover": {
            color: "white",
            background: "black",
            boxShadow: "5px 5px 3px -3px rgba(64,64,64,0.74)"
          }
        }}
        onClick={handleOpenClick}
      />

      <Dropdown
        trigger={trigger}
        options={options}
        pointing="top left"
        icon={null}
      />

      {isModalOpen &&
        createPortal(
          <Modal>
            <div ref={node}>
              <Card>
                <Search />
              </Card>
            </div>
          </Modal>,
          $portal
        )}
    </div>
  );
}

export default Header;
