/** @jsx jsx */
import { jsx } from "@emotion/core";
import { Link } from "@reach/router";

function Nav({ styles }) {
  return (
    <div
      css={{
        backgroundColor: "black",
        color: "white",
        display: "flex",
        flexDirection: "column",
        justifyContent: "space-around",
        ...styles
      }}
    >
      <Link to="/miniassignments">
        <p>Miniassignments</p>
      </Link>
      <Link to="/lessons">
        <p>Lessons</p>
      </Link>
    </div>
  );
}

export default Nav;
