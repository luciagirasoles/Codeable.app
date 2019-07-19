/**@jsx jsx */
import React from "react";
import { jsx } from "@emotion/core";
import MainLayout from "../components/layouts/MainLayout";
import { data } from "../data";
import Aside from "../components/Aside";

function Lesson({ index }) {
  return (
    <MainLayout>
      <div css={{ display: "grid", gridTemplateColumns: "1fr 200px" }}>
        <div>
          <h1>
            Welcome to Modulo {index} : {data[index].name.toUpperCase()}
          </h1>

          <p>
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Aspernatur
            ab fugit perferendis commodi cum facere eligendi, laboriosam vitae
            sequi blanditiis officia deserunt nam excepturi doloribus. Eos
            accusamus a aut expedita!
          </p>
        </div>
        <Aside />
      </div>
    </MainLayout>
  );
}

export default Lesson;
