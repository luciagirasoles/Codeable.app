/** @jsx jsx */
import React from "react";
import { jsx } from "@emotion/core";
import { navigate, Link } from "@reach/router";
import { useLogin } from "../redux/action-hook";
import { useUser } from "../redux/selector";
import { Card, Logo } from "../components/UI/Ui";
import { Button } from "../components/UI/Buttons";
import { InputLoginEmail, InputLoginPassword } from "../components/UI/Inputs";
import HomeLayout from "../components/layouts/HomeLayout";
function Login() {
  const login = useLogin();
  const user = useUser();
  const [email, setEmail] = React.useState("ry.yrupailla@gmail.com");
  const [password, setPassword] = React.useState("123456");

  React.useEffect(() => {
    if (user.currentUser.name) {
      navigate("/lessons");
    }
  }, [user]);

  function handleEmailChange(event) {
    setEmail(event.target.value);
  }

  function handlePasswordChange(event) {
    setPassword(event.target.value);
  }

  async function handleSubmit(event) {
    event.preventDefault();
    login({ email, password });
  }

  return (
    <HomeLayout>
      <Card
        css={{
          display: "flex",
          flexDirection: "column",
          justifyContent: "center",
          alignItems: "center",
          maxWidth: "90%",
          minWidth: "20em",
          minHeight: "10em",
          width: "auto"
        }}
      >
        <Logo
          css={{
            marginBottom: "1em"
          }}
        />
        <form
          onSubmit={handleSubmit}
          css={{
            display: "flex",
            flexDirection: "column",
            margin: "0.5em"
          }}
        >
          <InputLoginEmail
            id="email"
            name="email"
            aria-label="email"
            value={email}
            onChange={handleEmailChange}
            autoFocus
          />

          <InputLoginPassword
            id="password"
            name="password"
            aria-label="password"
            value={password}
            onChange={handlePasswordChange}
          />
          <Button> Log In</Button>
          {user.error && (
            <div
              css={{
                color: "red",
                textAlign: "center",
                margin: "0.5em",
                fontSize: "0.95em"
              }}
            >
              Error: {user.error}
            </div>
          )}

          <div
            css={{
              display: "flex",
              justifyContent: "center",
              marginTop: "50px",
              fontSize: ".8em"
            }}
          >
            <Link to="/forgot" css={{ fontSize: "1.3em" }}>
              Forgot Password?
            </Link>
          </div>
        </form>
      </Card>
    </HomeLayout>
  );
}
export default Login;
