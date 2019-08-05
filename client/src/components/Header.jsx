/** @jsx jsx */
import { useState, useMemo, useEffect, useRef } from "react";
import { createPortal } from "react-dom";
import { jsx } from "@emotion/core";
import { FaUserCircle, FaRegBell } from "react-icons/fa";
import { GoSearch } from "react-icons/go";
import { Menu, MenuList, MenuButton, MenuItem } from "@reach/menu-button";
import { useLogout } from "../redux/action-hook";
import { navigate } from "@reach/router";
import Search from "./Search";
import { Modal, Card } from "./UI/Ui";

function Header({ styles }) {
  const $portal = useMemo(() => document.getElementById("portal"), []);
  const [isModalOpen, setIsModalOpen] = useState(false);
  const node = useRef();
  const logout = useLogout();

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
          fontSize: "1.15em",
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

      <FaRegBell
        css={{ fontSize: "1.15em", alignSelf: "center", marginRight: "20px" }}
      />

      <Menu>
        <MenuButton
          aria-label="User actions"
          css={{
            background: "none",
            border: "none",
            borderRadius: "50%",
            cursor: "pointer",
            padding: "0",
            width: "30px",
            marginRight: "30px",
            fontSize: "2em",
            display: "flex",
            alignSelf: "center",
            transition: "all 200ms ease",
            ":hover": {
              color: "white",
              background: "black",
              boxShadow: "5px 5px 3px -3px rgba(64,64,64,0.74)"
            }
          }}
        >
          <FaUserCircle />
        </MenuButton>
        <MenuList
          css={{
            position: "absolute",
            right: 25,
            top: 40,
            cursor: "pointer",
            color: "white",
            padding: "2px 5px 3px",
            backgroundColor: "blue"
          }}
        >
          <MenuItem
            onSelect={() => {
              logout();
            }}
          >
            Logout
          </MenuItem>
          <MenuItem onSelect={() => changePassword()}>Change Password</MenuItem>
        </MenuList>
      </Menu>
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
