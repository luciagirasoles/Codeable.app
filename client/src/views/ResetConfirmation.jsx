/** @jsx jsx */
import { jsx } from "@emotion/core";
import Background from "../assets/background-login.jpeg";
import { Link } from "@reach/router";
import { Card } from "../components/Ui";

function ResetConfirmation() {
  return (
    <div
      css={{
        display: "flex",
        alignItems: "center",
        justifyContent: "center",
        backgroundImage: `url(${Background})`,
        backgroundColor: "#ffffff",
        backgroundSize: "cover",
        height: "100vh"
      }}
    >
      <Card
        css={{
          display: "flex",
          flexDirection: "column",
          alignItems: "center",
          justifyContent: "space-between",
          width: "500px",
          height: "300px"
        }}
      >
        <div
          css={{
            width: "100%",
            height: "100%",
            display: "flex",
            flexDirection: "column",
            justifyContent: "space-between"
          }}
        >
          <h2>Reset your password</h2>
          <div
            css={{
              height: "70%",
              display: "flex",
              flexDirection: "column",
              justifyContent: "space-around"
            }}
          >
            <p>
              We have sent a reset password email to{" "}
              <b>ry.yrupailla@gmail.com</b>. Please click the reset password
              link to set your new password.
            </p>

            <p>
              Didn't receive the email yet? <br /> Please check your spam folder
              or{" "}
              <Link to="/forgot" css={{ color: "rgb(0,200,100)" }}>
                resend
              </Link>{" "}
              the email.{" "}
            </p>
          </div>
        </div>
      </Card>
    </div>
  );
}

export default ResetConfirmation;
