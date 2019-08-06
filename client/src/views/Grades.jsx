/**@jsx jsx */
import React from "react";
import { jsx } from "@emotion/core";
import MainLayout from "../components/layouts/MainLayout";
import { Redirect } from "@reach/router";
import { useUser } from "../redux/selector";
import { useRequestGrades, useRequestSolutions } from "../redux/action-hook";
import { useGrades, useSolutions } from "../redux/selector";
import GradeModulo from "../components/GradeModulo";
import WeekMini from "../components/WeekMini";
import { Tab, Tabs, TabList, TabPanel } from "react-tabs";
import "react-tabs/style/react-tabs.css";

function Grades() {
  const user = useUser();
  const fetchGrades = useRequestGrades();
  const grades = useGrades();
  const requestSolutions = useRequestSolutions();
  const solutions = useSolutions();

  React.useEffect(() => {
    fetchGrades();
    requestSolutions();
  }, [fetchGrades, requestSolutions]);

  if (!user.currentUser.name) return <Redirect to="/" noThrow />;

  const sectionStyle = {
    padding: "50px",
    display: "flex",
    flexWrap: "wrap",
    alignItems: "stretch",
    justifyContent: "space-around"
  };

  return (
    <MainLayout>
      <Tabs>
        <TabList>
          <Tab>Extended Projects</Tab>
          <Tab>Mini Assignments</Tab>
          <Tab disabled>English Progress</Tab>
        </TabList>
        <TabPanel>
          <section css={sectionStyle}>
            {Object.entries(grades).map(([title, grades]) => {
              return (
                <article css={{ marginBottom: "1rem", width: "45%" }}>
                  <GradeModulo key={title} title={title} grades={grades} />
                </article>
              );
            })}
          </section>
        </TabPanel>
        <TabPanel>
          <section css={sectionStyle}>
            <WeekMini />
            <WeekMini />
          </section>
        </TabPanel>
      </Tabs>
    </MainLayout>
  );
}

export default Grades;
