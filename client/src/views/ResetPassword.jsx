/** @jsx jsx */
import { useState } from "react";
import { jsx } from "@emotion/core";
import { navigate } from "@reach/router";

import { Card, Logo } from "../components/UI/Ui";
import { Button } from "../components/UI/Buttons";
import { Input } from "../components/UI/Inputs";
import { resetPassword } from "../services/resetPassword";
import HomeLayout from "../components/layouts/HomeLayout";

function ResetPassword({ token }) {
  const [password, setPassword] = useState("");
  const [confirm, setConfirm] = useState("");
  const [error, setError] = useState();

  async function handleSubmit(e) {
    e.preventDefault();
    if (password === confirm) {
      const response = await resetPassword(password, token);
      if (response.errors) setError(response.errors);
      else navigate("/resetsuccessful");
    }
  }

  function handlePasswordChange(e) {
    setPassword(e.target.value);
    if (e.target.value.length < 6) {
      setError("Password should have at least six characters");
    } else {
      setError(null);
    }
  }

  function handleConfirmChange(e) {
    setConfirm(e.target.value);
    if (password !== e.target.value) {
      setError("Password should match");
    } else {
      setError(null);
    }
  }

  return (
    <HomeLayout>
      <Card
        css={{
          display: "flex",
          flexDirection: "column",
          alignItems: "center",
          justifyContent: "center",
          width: "500px",
          height: "400px"
        }}
      >
        <form
          css={{
            width: "100%",
            height: "100%",
            display: "flex",
            flexDirection: "column",
            justifyContent: "space-between"
          }}
          onSubmit={handleSubmit}
        >
          <Logo />
          <h2>Change your password</h2>
          <div
            css={{
              height: "70%",
              display: "flex",
              flexDirection: "column",
              justifyContent: "space-between"
            }}
          >
            <p>Dont't worry, reset your password is easy.</p>

            <Input
              name="password"
              type="password"
              placeholder="Password"
              onChange={handlePasswordChange}
            />

            <Input
              name="password-confirm"
              type="password"
              placeholder="Confirm Password"
              onChange={handleConfirmChange}
            />
            <div
              css={{
                color: "red",
                textAlign: "center",
                margin: "0.5em",
                fontSize: "0.95em",
                height: "30px"
              }}
            >
              {error}
            </div>
            <Button>Submit</Button>
          </div>
        </form>
      </Card>
    </HomeLayout>
  );
}

export default ResetPassword;
