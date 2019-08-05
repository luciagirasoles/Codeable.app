/** @jsx jsx */
import { jsx } from "@emotion/core";
import React from "react";
import { useUser, useModulos } from "../redux/selector";
import MainLayout from "../components/layouts/MainLayout";
import { Redirect } from "@reach/router";

import { Loading } from "../components/UI/Ui";
const Module = React.lazy(() => import("../components/Module"));

function Lessons() {
  const user = useUser();
  const modulos = useModulos();

  if (!user.currentUser.name) return <Redirect to="/" noThrow />;

  return (
    <MainLayout>
      <React.Suspense fallback={<Loading />}>
        <h1
          css={{
            margin: "0px",
            fontWeight: "inherit",
            fontSize: "20px",
            paddingBottom: "30px"
          }}
        >
          Modules and <b>Lessons</b>
        </h1>
        <p css={{ fontSize: "15px" }}>
          Quick Jump:
          {modulos &&
            modulos.map(modulo => {
              return (
                <>
                  <a
                    key={`modulekey_${modulo.id}`}
                    href={"/lessons#module" + modulo.id}
                    css={{
                      padding: "2px 7px",
                      borderRadius: "2px",
                      ":hover": {
                        backgroundColor: "gray"
                      }
                    }}
                  >
                    Module {modulo.id}
                  </a>
                  |
                </>
              );
            })}
        </p>
        {modulos &&
          modulos.map(modulo => {
            return <Module key={JSON.stringify(modulo)} module={modulo} />;
          })}
      </React.Suspense>
    </MainLayout>
  );
}

export default Lessons;
