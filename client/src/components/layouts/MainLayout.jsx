/** @jsx jsx */
import { jsx } from "@emotion/core";
import Header from "../Header";
import Nav from "../Nav";

function MainLayout({ children }) {
  return (
    <div css={{ fontFamily: "'Open Sans', 'sans-serif'" }}>
      <Nav />
      <div
        css={{
          backgroundColor: "white",
          height: "100vh",
          display: "grid",
          gridTemplateAreas: " 'header' 'content'",
          gridTemplateRows: "auto 1fr",
          paddingLeft: "56px"
        }}
      >
        <Header styles={{ gridArea: "header" }} />
        <div css={{ gridArea: "content", padding: "10px" }}>{children}</div>
      </div>
    </div>
  );
}

export default MainLayout;
