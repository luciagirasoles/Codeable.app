/** @jsx jsx */
import { jsx } from "@emotion/core";
import Module from "../components/Module";
import { useUser, useModulo } from "../redux/selector";
import MainLayout from "../components/layouts/MainLayout";
import { useEffect } from "react";
import { Redirect } from "@reach/router";
import { useRequestAPI } from "../redux/action-hook";

function Class() {
  const user = useUser();
  const request = useRequestAPI();
  const modulo = useModulo();

  useEffect(() => {
    request();
  }, []);

  if (!user.currentUser.name) return <Redirect to="/" noThrow />;

  return (
    <MainLayout>
      {modulo &&
        modulo.map(value => {
          return <Module key={JSON.stringify(value)} module={value} />;
        })}
    </MainLayout>
  );
}

export default Class;
