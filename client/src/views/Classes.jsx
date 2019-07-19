/** @jsx jsx */
import { jsx } from "@emotion/core";
import Module from "../components/Module";
import { useUser } from "../redux/selector";
import MainLayout from "../components/layouts/MainLayout";
import { data } from "../data";
import { Redirect } from "@reach/router";

function Class() {
  const user = useUser();

  if (!user.currentUser.name) return <Redirect to="/" noThrow />;

  return (
    <MainLayout>
      {data.map(value => {
        return <Module modulo={value} />;
      })}
    </MainLayout>
  );
}

export default Class;
