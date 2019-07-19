const API_SEND_EMAIL_URL = "http://localhost:3000/password_resets";
const API_RESET_PASSWORD_URL = "http://localhost:3000/password_resets/1";
const API_CHANGE_PASSWORD_URL = "http://localhost:3000/change_passwords/1";

async function sendResetEmail(email) {
  const response = await fetch(API_SEND_EMAIL_URL, {
    method: "POST",
    credentials: "include",
    body: JSON.stringify({ email: email }),
    headers: {
      "Content-Type": "application/json"
    }
  });

  return await response.json();
}

async function resetPassword(password, token) {
  const response = await fetch(API_RESET_PASSWORD_URL, {
    method: "PATCH",
    credentials: "include",
    body: JSON.stringify({ password: password, token: token }),
    headers: {
      "Content-Type": "application/json"
    }
  });

  return await response.json();
}

async function changePassword(password, email) {
  const response = await fetch(API_CHANGE_PASSWORD_URL, {
    method: "PATCH",
    credentials: "include",
    body: JSON.stringify({ password, email }),
    headers: {
      "Content-Type": "application/json"
    }
  });

  return await response.json();
}

export { sendResetEmail, resetPassword, changePassword };
