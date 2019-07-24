/** @jsx jsx */
import { jsx } from "@emotion/core";
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
      {modulos &&
        modulos.map(value => {
          return <Module key={JSON.stringify(value)} module={value} />;
        })}
    </MainLayout>
  );
}

export default Lessons;
