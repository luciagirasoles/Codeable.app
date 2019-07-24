/** @jsx jsx */
import React from "react";
import { jsx } from "@emotion/core";
import { navigate } from "@reach/router";
import { useUser } from "../redux/selector";
import { Card, Input, Button, Logo } from "../components/Ui";
import { changePassword } from "../services/resetPassword";
import MainLayout from "../components/layouts/MainLayout";
import { Redirect } from "@reach/router";

function Forgot() {
  const [currentPassword, setCurrentPassword] = React.useState("");
  const [newPassword, setNewPassword] = React.useState("");
  const [confirm, setConfirm] = React.useState("");
  const [error, setError] = React.useState();
  const [alert, setAlert] = React.useState(null);
  const user = useUser();

  if (!user.currentUser.name) return <Redirect to="/" noThrow />;

  async function handleSubmit(e) {
    e.preventDefault();
    let email = user.currentUser.email;
    if (newPassword === confirm) {
      const response = await changePassword(newPassword, email);
      if (response.errors) setError(response.errors);
      else {
        setAlert("Password has been changed successfully");
        setCurrentPassword("");
        setNewPassword("");
        setConfirm("");
        setTimeout(function() {
          setAlert(null);
          navigate("/lessons");
        }, 3000);
      }
    }
  }

  function handlePassword(e) {
    setCurrentPassword(e.target.value);
  }

  function handlePasswordChange(e) {
    setNewPassword(e.target.value);
    if (e.target.value.length < 6) {
      setError("Password should have at least six characters");
    } else {
      setError(null);
    }
  }

  function handleConfirmChange(e) {
    setConfirm(e.target.value);
    if (newPassword !== e.target.value) {
      setError("Password should match");
    } else {
      setError(null);
    }
  }

  return (
    <MainLayout>
      <Card
        css={{
          display: "flex",
          flexDirection: "column",
          alignItems: "center",
          justifyContent: "center",
          width: "400px",
          height: "500px",
          margin: "0 auto"
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
          <h2 css={{ margin: "0 auto" }}>Change password</h2>
          <div
            css={{
              height: "70%",
              display: "flex",
              flexDirection: "column",
              justifyContent: "space-between"
            }}
          >
            <label>Current Password</label>
            <Input
              name="currentpassword"
              type="password"
              placeholder="Enter Current Password"
              autoComplete="off"
              onChange={handlePassword}
              autoFocus
            />
            <label>New Password</label>
            <Input
              name="newpassword"
              type="password"
              placeholder="Enter New Password"
              onChange={handlePasswordChange}
              autoComplete="off"
            />
            <label>Confirm New Password</label>
            <Input
              name="confirmpassword"
              type="password"
              placeholder="Confirm New Password"
              onChange={handleConfirmChange}
              autoComplete="off"
            />
            <span css={{ color: "red" }}>{error}</span>
            <span css={{ color: "green" }}>{alert}</span>

            <Button>Submit</Button>
          </div>
        </form>
      </Card>
    </MainLayout>
  );
}

export default Forgot;
