/** @jsx jsx */
import { jsx } from "@emotion/core";
import { navigate } from "@reach/router";

import { Card } from "../components/UI/Ui";
import { Button } from "../components/UI/Buttons";
import { Input } from "../components/UI/Inputs";
import { sendResetEmail } from "../services/resetPassword";
import HomeLayout from "../components/layouts/HomeLayout";

function Forgot() {
  async function handleSubmit(e) {
    e.preventDefault();
    if (e.target.elements.email.value !== "") {
      sendResetEmail(e.target.elements.email.value);
      navigate(`/resetconfirm/${e.target.elements.email.value}`);
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
          height: "300px"
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
          <h2>Ask for new password</h2>
          <div
            css={{
              height: "70%",
              display: "flex",
              flexDirection: "column",
              justifyContent: "space-between"
            }}
          >
            <p>
              Dont't worry, reset your password is easy. Just enter your email
              address.
            </p>

            <Input name="email" type="email" placeholder="Email" />

            <Button>Submit</Button>
          </div>
        </form>
      </Card>
    </HomeLayout>
  );
}

export default Forgot;
