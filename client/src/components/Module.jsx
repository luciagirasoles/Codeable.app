/** @jsx jsx*/
import React from "react";
import Resources from "./Resources";
import { jsx } from "@emotion/core";
import { MdKeyboardArrowDown, MdKeyboardArrowUp } from "react-icons/md";

function Module({ modulo, index }) {
  const [show, setShow] = React.useState(false);

  function showMaterial() {
    show ? setShow(false) : setShow(true);
  }

  return (
    <div
      css={{
        backgroundColor: "white",
        borderRadius: "10px",
        padding: "10px",
        margin: "20px 50px"
      }}
    >
      <div
        css={{
          display: "flex",
          justifyContent: "space-between",
          alignItems: "center"
        }}
      >
        <h2>Modulo: {modulo.name}</h2>

        {show ? (
          <MdKeyboardArrowUp
            onClick={showMaterial}
            css={{
              cursor: "pointer",
              fontSize: "40px"
            }}
          />
        ) : (
          <MdKeyboardArrowDown
            onClick={showMaterial}
            css={{
              cursor: "pointer",
              fontSize: "40px"
            }}
          />
        )}
      </div>
      <hr />

      {show && (
        <div>
          <p>{modulo.description}</p>
          {modulo.resources.map(element => {
            return (
              <Resources
                title={element.title}
                mainResource={element.mainResources}
                extraResource={element.extraResources}
                index={index}
              />
            );
          })}
        </div>
      )}
    </div>
  );
}

export default Module;
