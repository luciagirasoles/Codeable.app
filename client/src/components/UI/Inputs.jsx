/** @jsx jsx */
import { jsx } from "@emotion/core";
import { TiPen } from "react-icons/ti";
import { FiUser, FiLock } from "react-icons/fi";
import { FaSearch, FaLink } from "react-icons/fa";
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

function InputSolution({ styles, ...props }) {
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
        <TiPen />
      </span>
      <span css={{ margin: "0.5em", display: "table-cell", width: "100%" }}>
        <input
          {...props}
          type="url"
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

function InputLink({ styles, ...props }) {
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
        <FaLink />
      </span>
      <span css={{ margin: "0.5em", display: "table-cell", width: "100%" }}>
        <input
          {...props}
          type="url"
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
  Input,
  InputSolution,
  InputLoginEmail,
  InputLoginPassword,
  InputLink,
  InputSearch
};
