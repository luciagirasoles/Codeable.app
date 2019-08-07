/** @jsx jsx */
import { jsx } from "@emotion/core";
import Header from "../Header";
import Nav from "../Nav";

function MainLayout({ styles, children }) {
  return (
    <div css={{ fontFamily: "'Open Sans', 'sans-serif'" }}>
      <Nav />
      <div
        css={{
          backgroundColor: "#e4eae7",
          minHeight: "100vh",
          display: "grid",
          gridTemplateAreas: " 'header' 'content'",
          gridTemplateRows: "auto 1fr",
          paddingLeft: "76px",
          paddingRight: "26px",
          minWidth: "fit-content",

          "@media (max-width: 350px)": {
            paddingLeft: "56px"
          },
          ...styles
        }}
      >
        <Header styles={{ gridArea: "header" }} />
        <div css={{ gridArea: "content", padding: "10px" }}>{children}</div>
      </div>
    </div>
  );
}

export default MainLayout;
