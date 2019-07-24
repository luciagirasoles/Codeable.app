/** @jsx jsx */
import { jsx } from "@emotion/core";
import { Link } from "@reach/router";
import { Card, Logo } from "../components/Ui";
import HomeLayout from "../components/layouts/HomeLayout";

function ResetConfirmation({ email }) {
  return (
    <HomeLayout>
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
        <Logo />
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
              We have sent a reset password email to <b>{email}</b>. Please
              click the reset password link to set your new password.
            </p>

            <p>
              Didn't receive the email yet? <br /> Please check your spam folder
              or{" "}
              <Link
                to="/forgot"
                css={{
                  color: "#4ea64e",
                  fontWeight: "bold"
                }}
              >
                resend
              </Link>{" "}
              the email.{" "}
            </p>
          </div>
        </div>
      </Card>
    </HomeLayout>
  );
}

export default ResetConfirmation;
