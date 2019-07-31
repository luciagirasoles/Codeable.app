/** @jsx jsx */
import { jsx, keyframes } from "@emotion/core";
import { FiUser, FiLock } from "react-icons/fi";
import { FaSearch } from "react-icons/fa";
import { IoMdClose } from "react-icons/io";

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

function Button({ styles, ...props }) {
  return (
    <button
      {...props}
      css={{
        border: "none",
        padding: "0.3em",
        backgroundColor: "#4ea64e",
        font: "inherit",
        color: "#FFF",
        fontSize: "1.3em",
        fontWeight: "bold",
        borderRadius: "5px",
        maxWidth: "5em",
        alignSelf: "center",
        marginBottom: "16px",
        ":hover": {
          backgroundColor: "#157522",
          cursor: "pointer",
          boxShadow: "5px 5px 3px -3px rgba(64,64,64,0.74)"
        },
        transition: "all 200ms ease",
        textAlign: "center",
        textTransform: "uppercase",

        width: "100%",
        ...styles
      }}
    />
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
        borderRadius: ".2em",
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

function Input({ styles, ...props }) {
  return (
    <input
      {...props}
      css={{
        border: "1.5px solid #87909e",
        borderRadius: "5px",
        boxSizing: "border-box",
        display: "block",
        fontSize: "1rem",
        padding: ".5rem",
        width: "100%",
        position: "relative",
        "&:focus": {
          outline: "none",
          borderBottom: "1.5px solid #4ea64e"
        },
        ...styles
      }}
    />
  );
}

function InputLoginEmail({ styles, ...props }) {
  return (
    <div
      css={{
        border: "1.5px solid #87909e",
        display: "inline-block",
        marginBottom: "1em",
        borderRadius: "5px",
        padding: "0.5em",
        ":focus-within": {
          borderBottom: "1.5px solid #4ea64e"
        }
      }}
    >
      <span css={{ display: "table-cell" }}>
        <FiUser />
      </span>
      <span css={{ margin: "0.5em", display: "table-cell", width: "100%" }}>
        <input
          {...props}
          type="email"
          css={{
            fontSize: "1em",
            border: "none",
            outline: "none",
            paddingLeft: "1em",
            width: "calc(100% - 1em)",
            ...styles
          }}
        />
      </span>
    </div>
  );
}
function InputLoginPassword({ styles, ...props }) {
  return (
    <div
      css={{
        border: "1.5px solid #87909e",
        display: "inline-block",
        marginBottom: "1em",
        borderRadius: "5px",
        padding: "0.5em",
        ":focus-within": {
          borderBottom: "1.5px solid #4ea64e"
        },
        ...styles
      }}
    >
      <span css={{ display: "table-cell" }}>
        <FiLock />
      </span>
      <span css={{ margin: "0.5em", display: "table-cell", width: "100%" }}>
        <input
          {...props}
          type="password"
          css={{
            fontSize: "1em",
            border: "none",
            outline: "none",
            paddingLeft: "1em",
            width: "calc(100% - 1em)"
          }}
        />
      </span>
    </div>
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
        fontSize: "2em",
        ...styles
      }}
      {...props}
    >
      {"{"} Code<span css={{ color: "#909296" }}>able</span> {"}"}
    </h1>
  );
}

function InputSearch({ styles, ...props }) {
  return (
    <div
      css={{
        background: "white",
        border: "1.5px solid #87909e",
        display: "inline-block",
        borderRadius: "5px",
        padding: "0.5em",
        cursor: "text",
        ":focus-within": {
          borderBottom: "1.5px solid #4ea64e"
        }
      }}
    >
      <span css={{ display: "table-cell", cursor: "inherit" }}>
        <FaSearch css={{ cursor: "inherit" }} />
      </span>
      <span
        css={{
          margin: "0.5em",
          display: "table-cell",
          width: "100%",
          cursor: "inherit"
        }}
      >
        <input
          {...props}
          type="search"
          placeholder="Search..."
          css={{
            fontSize: "1em",
            border: "none",
            outline: "none",
            paddingLeft: "1em",
            width: "calc(100% - 1em)",
            ...styles
          }}
        />
      </span>
    </div>
  );
}

export {
  Button,
  Card,
  Input,
  Label,
  InputLoginEmail,
  InputLoginPassword,
  Logo,
  InputSearch,
  Modal,
  Tag,
  Collaborator
};
