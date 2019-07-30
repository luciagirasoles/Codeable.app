/** @jsx jsx */
import { jsx } from "@emotion/core";
import React from "react";
import Module from "../components/Module";
import { useUser, useModulos } from "../redux/selector";
import MainLayout from "../components/layouts/MainLayout";
import { useEffect } from "react";
import { Redirect } from "@reach/router";
import { useRequestModulos } from "../redux/action-hook";

function Lessons() {
  const user = useUser();
  const requestModulos = useRequestModulos();
  const modulos = useModulos();

  useEffect(() => {
    requestModulos();
  }, []);

  if (!user.currentUser.name) return <Redirect to="/" noThrow />;

  return (
    <MainLayout>
      <div
        css={{
          margin: "0px",
          paddingLeft: "30px"
        }}
      >
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
          quick jump:{" "}
          {modulos &&
            modulos.map(modulo => {
              return (
                <>
                  {" "}
                  <a
                    key={JSON.stringify(modulo)}
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
                  </a>{" "}
                  |
                </>
              );
            })}
        </p>
        {modulos &&
          modulos.map(modulo => {
            return <Module key={JSON.stringify(modulo)} module={modulo} />;
          })}
      </div>
    </MainLayout>
  );
}

export default Lessons;
