/** @jsx jsx */
import { jsx } from "@emotion/core";
import Header from "../Header";
import Nav from "../Nav";

function MainLayout({ children }) {
  return (
    <div
      css={{
        backgroundColor: "#eee",
        height: "100vh",
        display: "grid",
        gridTemplateAreas: " 'nav header' 'nav content'",
        gridTemplateColumns: "auto 1fr",
        gridTemplateRows: "auto 1fr",
        fontFamily: "'Open Sans', 'sans-serif'"
      }}
    >
      <Header styles={{ gridArea: "header" }} />
      <Nav styles={{ gridArea: "nav" }} />
      <div css={{ gridArea: "content", padding: "40px" }}>{children}</div>
    </div>
  );
}

export default MainLayout;
