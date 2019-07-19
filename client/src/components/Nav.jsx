/** @jsx jsx */
import { jsx } from "@emotion/core";

function Nav({ styles }) {
  return (
    <div css={{ backgroundColor: "black", color: "white", ...styles }}>
      Navbar
    </div>
  );
}

export default Nav;
