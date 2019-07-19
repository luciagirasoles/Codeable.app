/** @jsx jsx */
import { jsx } from "@emotion/core";

function Aside({ styles }) {
  return (
    <div css={{ backgroundColor: "green", color: "black", ...styles }}>
      Aside
    </div>
  );
}

export default Aside;
