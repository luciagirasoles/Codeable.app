const API_LOGIN_URL = "http://localhost:3000/login";
const API_LOGOUT_URL = "http://localhost:3000/logout";
const URL = `http://localhost:3000/modulos`;
const URL_Lesson = `http://localhost:3000/sublessons`;

function login(user) {
  return async dispatch => {
    dispatch({ type: "LOGIN_REQUEST" });

    const response = await fetch(API_LOGIN_URL, {
      method: "POST",
      credentials: "include",
      body: JSON.stringify(user),
      headers: {
        "Content-Type": "application/json"
      }
    });

    const payload = await response.json();

    if (!response.ok) {
      dispatch({ type: "LOGIN_ERROR", payload: payload.errors });
    } else {
      dispatch({ type: "LOGIN_SUCCESS", payload });
    }
  };
}

function logout() {
  return async dispatch => {
    const response = await fetch(API_LOGOUT_URL, {
      method: "DELETE",
      credentials: "include"
    });

    if (!response.ok) {
      dispatch({ type: "DEFAULT" });
    } else {
      dispatch({ type: "LOGOUT" });
    }
  };
}

// Request API for Module , Lesson & Sublesson
function requestAPI() {
  return async dispatch => {
    let response = await fetch(URL, {
      credentials: "include",
      headers: {
        "Content-Type": "application/json"
      }
    });
    let data = await response.json();
    dispatch({ type: "FETCH_DATA", payload: data });
  };
}

function requestSublesson(id) {
  return async dispatch => {
    let response = await fetch(`${URL_Lesson}/${id}`, {
      credentials: "include",
      headers: {
        "Content-Type": "application/json"
      }
    });
    let data = await response.json();
    dispatch({ type: "FETCH_DATA_SUBLESSON", payload: data });
  };
}

export { login, logout, requestAPI, requestSublesson };
