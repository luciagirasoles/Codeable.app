/**@jsx jsx */
import React from "react";
import { jsx } from "@emotion/core";
import MainLayout from "../components/layouts/MainLayout";
import { Redirect } from "@reach/router";
import { Card } from "../components/UI/Ui";
import { useUser } from "../redux/selector";

function TitleApplication() {
  const user = useUser();

  if (!user.currentUser.name) return <Redirect to="/" noThrow />;

  return (
    <MainLayout>
      <Card styles={{ padding: "50px" }}>Title Aplication</Card>
    </MainLayout>
  );
}

export default TitleApplication;
