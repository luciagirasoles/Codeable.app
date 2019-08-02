/**@jsx jsx */
import React from "react";
import { jsx } from "@emotion/core";
import MainLayout from "../components/layouts/MainLayout";
import { Redirect } from "@reach/router";
import { useUser } from "../redux/selector";
import { useRequestGrades } from "../redux/action-hook";
import { useGrades } from "../redux/selector";
import GradeModulo from "../components/GradeModulo";

function Grades() {
  const user = useUser();
  const fetch_grades = useRequestGrades();
  const grades = useGrades();

  React.useEffect(() => {
    fetch_grades();
  }, [fetch_grades]);

  if (!user.currentUser.name) return <Redirect to="/" noThrow />;

  return (
    <MainLayout>
      <section
        css={{
          padding: "50px",
          display: "flex",
          flexWrap: "nowrap",
          alignItems: "stretch",
          justifyContent: "space-around"
        }}
      >
        {Object.entries(grades).map(([title, grades]) => {
          return (
            <article css={{ marginBottom: "1rem", width: "45%" }}>
              <GradeModulo key={title} title={title} grades={grades} />
            </article>
          );
        })}
      </section>
    </MainLayout>
  );
}

export default Grades;
