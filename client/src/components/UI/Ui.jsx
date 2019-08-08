/** @jsx jsx */
import { jsx, keyframes } from "@emotion/core";
import { IoMdClose } from "react-icons/io";
import { Rolling } from "react-loading-io";

function Loading() {
  return (
    <div
      css={{
        display: "flex",
        position: "absolute",
        top: 0,
        height: "100vh",
        alignItems: "center",
        width: "100%",
        justifyContent: "center",
        left: 0
      }}
    >
      <Rolling size={64} color={"#4ea64e"} />
    </div>
  );
}

function Modal({ styles = {}, children }) {
  return (
    <div
      css={{
        backgroundColor: "rgba(0, 0, 0, .5)",
        display: "flex",
        justifyContent: "center",
        alignItems: "center",
        position: "fixed",
        top: 0,
        left: 0,
        right: 0,
        bottom: 0,
        zIndex: 100,
        ...(styles.backdrop || {})
      }}
    >
      <button
        css={{
          position: "fixed",
          right: "10px",
          top: "10px",
          background: "0 0",
          border: "none",
          cursor: "pointer",
          padding: "0px",
          borderRadius: "50%"
        }}
        aria-label="Close"
      >
        <IoMdClose
          css={{
            fontSize: "xx-large",
            alignSelf: "center",
            padding: "5px",
            cursor: "pointer",
            borderRadius: "50%",
            size: "30px",
            color: "white",
            background: "#4ea64e",
            boxShadow: "5px 8px 8px -1px rgba(64,64,64,0.74)",
            transition: "0.3s",
            ":hover": {
              background: "#157522"
            }
          }}
        />
      </button>
      <div
        role="dialog"
        css={{
          position: "fixed",
          top: "50%",
          transform: "translateY(-50%)",
          width: "80%",
          maxWidth: 450,
          zIndex: 110,
          ...(styles.dialog || {})
        }}
      >
        {children}
      </div>
    </div>
  );
}

function Collaborator({ styles, ...props }) {
  return (
    <div
      css={{
        borderRadius: "50%",
        color: "white",
        fontSize: "10px",
        margin: "2px",
        fontWeight: "bold",
        backgroundColor: "mediumpurple",
        height: "22px",
        width: "22px",
        display: "flex",
        justifyContent: "center",
        alignItems: "center",
        boxSizing: "border-box",
        ...styles
      }}
    >
      {props.children}
    </div>
  );
}

function Tag({ styles, ...props }) {
  const tagProps = {
    1: { color: "mediumseagreen", tagText: "overview" },
    2: { color: "lightseagreen", tagText: "workshop" },
    3: { color: "goldenrod", tagText: "m-assign" },
    4: { color: "mediumpurple", tagText: "exercises" },
    5: { color: "indianred", tagText: "blog" }
  };
  return (
    <span
      css={{
        fontSize: ".8em",
        fontWeight: "bold",
        letterSpacing: "1px",
        backgroundColor: `${
          props.tagId ? tagProps[props.tagId].color : "indianred"
        }`,
        display: "inline-block",
        padding: "4px 7px",
        borderRadius: "5px",
        "@media (max-width: 760px)": { minWidth: "max-content" },
        ...styles
      }}
    >
      {props.children ? props.children : tagProps[props.tagId].tagText}
    </span>
  );
}

function Card({ styles, ...props }) {
  const animateProfileGate = keyframes`
   0% {
    opacity: 0;
    transform: scale(1.1);
  }
  100% {
    opacity: 1;
    transform: scale(1);
  }
 `;

  return (
    <div
      {...props}
      css={{
        background: "white",
        borderRadius: ".5em",
        boxShadow: "0px 2px 5px 0px rgba(0, 0, 0, .12)",
        boxSizing: "border-box",
        padding: "2rem",
        width: "100%",
        animation: `${animateProfileGate} 450ms ease 1`,
        ...styles
      }}
    />
  );
}

function Label({ styles, ...props }) {
  return (
    <label css={{ display: "block", margin: "1em 0", ...styles }} {...props} />
  );
}
function Logo({ styles, ...props }) {
  return (
    <h1
      css={{
        textAlign: "center",
        fontSize: "xx-large",
        ...styles
      }}
      {...props}
    >
      {"{"} Code<span css={{ color: "#909296" }}>able</span> {"}"}
    </h1>
  );
}

export { Card, Label, Logo, Modal, Tag, Collaborator, Loading };
