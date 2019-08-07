/**@jsx jsx */
import React from "react";
import { jsx } from "@emotion/core";
import { Card } from "../components/UI/Ui";
import GradeDetails from "../components/GradeDetails";
import Grade from "../components/Grade";
import { motion } from "framer-motion";

function GradeModulo({ title, grades }) {
  const gateGrade = grades[grades.length - 1];
  const [showDetails, setShowDetails] = React.useState(null);

  function handleGradeClick(week) {
    setShowDetails(week);
  }

  function handleCloseClick() {
    setShowDetails(null);
  }

  const details = showDetails
    ? grades.find(grade =>
        showDetails === "GATE"
          ? grade.week === null
          : grade.week === showDetails
      )
    : null;

  return (
    <Card
      styles={{
        height: "100%"
      }}
    >
      <header>
        <h2>{title}</h2>
      </header>
      <motion.section
        css={{
          backfaceVisibility: "hidden",
          display: "flex",
          justifyContent: "space-between",
          flexDirection: "column",
          height: "calc(100% - 25px)",
          marginTop: "15px"
        }}
        initial={{ rotate: 0 }}
        animate={{ rotateY: showDetails ? 360 : 0 }}
        transition={{ duration: 1 }}
      >
        {!showDetails ? (
          <>
            {grades.slice(0, grades.length - 1).map(grade => (
              <Grade
                key={grade.week}
                tipo={grade.tipo}
                week={grade.week}
                codeReview={grade.code_review}
                performance={grade.performance}
                testing={grade.testing}
                dryCode={grade.dry_code}
                onClick={handleGradeClick}
              />
            ))}
            <Grade
              key={gateGrade.tipo}
              tipo={gateGrade.tipo}
              codeReview={gateGrade.code_review}
              performance={gateGrade.performance}
              testing={gateGrade.testing}
              dryCode={gateGrade.dry_code}
              onClick={handleGradeClick}
            />
          </>
        ) : (
          <GradeDetails
            codeReview={details.code_review}
            performance={details.performance}
            testing={details.testing}
            dryCode={details.dry_code}
            onClick={handleCloseClick}
            feedback={details.feedback}
          />
        )}
      </motion.section>
    </Card>
  );
}

export default GradeModulo;
