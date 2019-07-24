/** @jsx jsx */
import { jsx, keyframes } from "@emotion/core";
import { FiUser, FiLock } from "react-icons/fi";
import { FaSearch } from "react-icons/fa";

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
        ":hover": { backgroundColor: "#157522", cursor: "pointer" },
        transition: "all 200ms ease",
        textAlign: "center",
        textTransform: "uppercase",
        width: "100%",
        ...styles
      }}
    />
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
      {"{"} Code<span css={{ color: "#999b9e" }}>able</span> {"}"}
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
          type="text"
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
  InputSearch
};
