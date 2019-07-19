/** @jsx jsx */
import { jsx } from "@emotion/core";
import Background from "../../assets/background-login.jpeg";

function HomeLayout({ children }) {
  return (
    <div
      css={{
        display: "flex",
        alignItems: "center",
        justifyContent: "center",
        backgroundImage: `url(${Background})`,
        backgroundColor: "#ffffff",
        backgroundSize: "cover",
        height: "100vh"
      }}
    >
      {children}
    </div>
  );
}

export default HomeLayout;
