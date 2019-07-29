/** @jsx jsx */
import { jsx } from "@emotion/core";
import React from "react";
import { Link } from "@reach/router";

function NavItem({ url, Icon, title, ariaLabel }) {
  const [active, setActive] = React.useState(false);

  return (
    <Link
      aria-label={"Go to your " + title}
      to={url}
      css={{
        display: "flex",
        fontSize: "27px",
        width: "56px",
        height: "56px",
        alignItems: "center",
        justifyContent: "center",
        position: "relative",
        color: active ? "white" : "rgba(255, 255, 255, 0.6)",
        ":hover": !active && {
          "& .toast": {
            maxWidth: "150px",
            visibility: "visible",
            opacity: "1",
            transitionDelay: "0.5s"
          }
        }
      }}
      getProps={({ isCurrent }) => {
        setActive(isCurrent);
      }}
    >
      <div
        css={{
          transition: "all .4s ease",
          ":hover": { color: "rgb(255, 255, 255)" },
          display: "flex",
          alignItems: "center",
          justifyContent: "center"
        }}
      >
        <Icon />
      </div>

      <div
        className="toast"
        css={{
          position: "absolute",
          top: "auto",
          bottom: "auto",
          left: "70px",
          fontSize: "15px",
          backgroundColor: "rgb(28,32,34)",
          padding: "4px",
          borderRadius: "3px",
          color: "white",
          maxWidth: "0px",
          opacity: "0",
          visibility: "hidden",
          transition: "all 0.4s ease",
          transitionDelay: "0s",
          zIndex: "100"
        }}
      >
        {title}
      </div>
    </Link>
  );
}

export default NavItem;
