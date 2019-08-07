/** @jsx jsx*/
import React from "react";
import Resources from "./Resources";
import { jsx } from "@emotion/core";
import { MdKeyboardArrowDown, MdKeyboardArrowUp } from "react-icons/md";

function Module({ module }) {
  const moduleEl = React.useRef(module.id);
  const [show, setShow] = React.useState(true);

  function showMaterial() {
    setShow(!show);
  }

  return (
    <div
      ref={moduleEl}
      id={"module" + module.id}
      css={{
        backgroundColor: "white",
        borderRadius: "10px",
        "@media (max-width: 760px)": { maxWidth: "75vw" }
      }}
    >
      <div
        css={{
          display: "flex",
          justifyContent: "space-between",
          color: "white",
          backgroundColor: "rgb(43,46,51)",
          padding: "20px 30px",
          margin: "20px 0px",
          cursor: "pointer",
          alignItems: "center"
        }}
        onClick={showMaterial}
      >
        <h3 css={{ margin: "0px", fontWeight: "inherit" }}>
          Modulo: {module.name}
        </h3>

        {show ? <MdKeyboardArrowUp /> : <MdKeyboardArrowDown />}
      </div>

      {show && (
        <div css={{ fontSize: "14px", padding: "0px 30px" }}>
          <p>{module.description}</p>
          {module.lessons.map(lessonId => {
            return <Resources key={lessonId} lessonId={lessonId} />;
          })}
        </div>
      )}
    </div>
  );
}

export default Module;
