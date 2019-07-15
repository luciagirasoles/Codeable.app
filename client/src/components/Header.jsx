/** @jsx jsx */
import React from "react";
import { jsx } from "@emotion/core";
import { FaUserCircle, FaRegBell } from "react-icons/fa";
import { Menu, MenuList, MenuButton, MenuItem } from "@reach/menu-button";
import { useLogout } from "../action-hook";

function Header() {
  const logout = useLogout();
  return (
    <div css={{ display: "flex", justifyContent: "flex-end", padding: "10px" }}>
      <FaRegBell
        css={{ fontSize: "1.15em", alignSelf: "center", marginRight: "20px" }}
      />

      <Menu>
        <MenuButton
          css={{
            background: "none",
            border: "none",
            cursor: "pointer",
            padding: "0",
            width: "30px",
            marginRight: "30px",
            fontSize: "2em",
            display: "flex",
            alignSelf: "center"
          }}
        >
          <FaUserCircle />
        </MenuButton>
        <MenuList
          css={{
            position: "absolute",
            top: 0,
            right: 25,
            top: 40,
            cursor: "pointer",
            color: "white",
            padding: "2px 5px 3px",
            backgroundColor: "blue"
          }}
        >
          <MenuItem onSelect={() => logout()}>Logout</MenuItem>
        </MenuList>
      </Menu>
    </div>
  );
}

export default Header;
