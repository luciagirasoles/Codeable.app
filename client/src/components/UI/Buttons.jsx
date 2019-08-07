/** @jsx jsx */
import { jsx } from "@emotion/core";

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

function ButtonRed({ styles, ...props }) {
  return (
    <button
      {...props}
      css={{
        border: "none",
        padding: "0.3em",
        backgroundColor: "#f35e61",
        font: "inherit",
        color: "#FFF",
        fontSize: "1.3em",
        fontWeight: "bold",
        borderRadius: "5px",
        maxWidth: "5em",
        alignSelf: "center",
        marginBottom: "16px",
        ":hover": {
          backgroundColor: "#ec393c",
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

function ButtonBlue({ styles, ...props }) {
  return (
    <button
      {...props}
      css={{
        border: "none",
        padding: "0.3em",
        backgroundColor: "#0aa5fd",
        font: "inherit",
        color: "#FFF",
        fontSize: "1.3em",
        fontWeight: "bold",
        borderRadius: "5px",
        maxWidth: "5em",
        alignSelf: "center",
        marginBottom: "16px",
        ":hover": {
          backgroundColor: "#0994e3",
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

function ButtonOrange({ styles, ...props }) {
  return (
    <button
      {...props}
      css={{
        border: "none",
        padding: "0.3em",
        backgroundColor: "#f88f51",
        font: "inherit",
        color: "#FFF",
        fontSize: "1.3em",
        fontWeight: "bold",
        borderRadius: "5px",
        maxWidth: "5em",
        alignSelf: "center",
        marginBottom: "16px",
        ":hover": {
          backgroundColor: "#df8048",
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

function ButtonAmber({ styles, ...props }) {
  return (
    <button
      {...props}
      css={{
        border: "none",
        padding: "0.3em",
        backgroundColor: "#ffc82c",
        font: "inherit",
        color: "#FFF",
        fontSize: "1.3em",
        fontWeight: "bold",
        borderRadius: "5px",
        maxWidth: "5em",
        alignSelf: "center",
        marginBottom: "16px",
        ":hover": {
          backgroundColor: "#ecb725",
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

function ButtonDisabled({ styles, ...props }) {
  return (
    <button
      {...props}
      disabled
      css={{
        border: "none",
        padding: "0.3em",
        backgroundColor: "#939393",
        font: "inherit",
        color: "#FFF",
        fontSize: "1.3em",
        fontWeight: "bold",
        borderRadius: "5px",
        maxWidth: "5em",
        alignSelf: "center",
        marginBottom: "16px",
        cursor: "not-allowed",
        textAlign: "center",
        textTransform: "uppercase",
        width: "100%",
        ...styles
      }}
    />
  );
}

export {
  Button,
  ButtonRed,
  ButtonBlue,
  ButtonOrange,
  ButtonAmber,
  ButtonDisabled
};
