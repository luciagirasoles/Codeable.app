/** @jsx jsx */
import { jsx } from "@emotion/core";

function Button({ styles, ...props }) {
  return (
    <button
      {...props}
      css={{
        backgroundColor: "#4ea64e",
        border: "1px solid #4ea64e",
        borderRadius: ".25rem",
        color: "white",
        cursor: "pointer",
        fontSize: ".8rem",
        padding: ".75rem 0",
        transition: "all 200ms ease",
        textAlign: "center",
        textTransform: "uppercase",
        width: "100%",
        "&:hover": {
          backgroundColor: "#3b7e3b"
        },
        ...styles
      }}
    />
  );
}

function Card({ styles, ...props }) {
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
        background: "none",
        border: "1px solid #4ea64e",
        borderRadius: ".25rem",
        boxSizing: "border-box",
        display: "block",
        fontSize: "1rem",
        padding: ".5rem",
        width: "100%",
        "&:focus": {
          outline: "none",
          borderColor: "#4ea64e"
        },
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

export { Button, Card, Input, Label };
