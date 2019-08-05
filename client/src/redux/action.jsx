const API_LOGIN_URL = "http://localhost:3000/login";
const API_LOGOUT_URL = "http://localhost:3000/logout";
const URL_MODULOS = `http://localhost:3000/modulos`;
const URL_SUBLESSON = `http://localhost:3000/sublessons`;
const URL_SOLUTION = `http://localhost:3000/solutions`;
const API_GRADES = `http://localhost:3000/modulo_grades`;
const URL_USERS_LIST = `http://localhost:3000/users/`;

async function createError(response) {
  const { errors } = await response.json();
  const error = new Error(errors.message);
  error.status = response.status;
  if (errors.status === 401) {
    logout();
  }
  error.statusText = response.statusText;
  return error;
}

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
    localStorage.clear();
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

// Request API for Users List

function requestUsersList() {
  return async dispatch => {
    try {
      let response = await fetch(`${URL_USERS_LIST}`, {
        credentials: "include",
        headers: {
          "Content-Type": "application/json"
        }
      });
      if (!response.ok) throw await createError(response);
      let data = await response.json();
      dispatch({ type: "LIST_USERS", payload: data });
    } catch {
      dispatch({ type: "LOGOUT" });
    }
  };
}

// Request API for Module , Lesson, Sublesson & Solutions
function requestModulos() {
  return async dispatch => {
    try {
      let response = await fetch(URL_MODULOS, {
        credentials: "include",
        headers: {
          "Content-Type": "application/json"
        }
      });
      if (!response.ok) throw await createError(response);
      let data = await response.json();

      dispatch({ type: "FETCH_DATA", payload: data });
    } catch {
      localStorage.clear();
      dispatch({ type: "LOGOUT" });
    }
  };
}

function requestSublesson(id) {
  return async dispatch => {
    let response = await fetch(`${URL_SUBLESSON}/${id}`, {
      credentials: "include",
      headers: {
        "Content-Type": "application/json"
      }
    });
    let data = await response.json();
    dispatch({ type: "DEFAULT", payload: data });
  };
}

function requestSolutions() {
  return async dispatch => {
    try {
      let response = await fetch(`${URL_SOLUTION}`, {
        credentials: "include",
        headers: {
          "Content-Type": "application/json"
        }
      });
      if (!response.ok) throw await createError(response);
      let data = await response.json();
      dispatch({ type: "LIST_SOLUTIONS", payload: data });
    } catch {
      dispatch({ type: "LOGOUT" });
    }
  };
}
function createSolution(solutiondata) {
  return async dispatch => {
    let response = await fetch(
      `${URL_SUBLESSON}/${solutiondata.sublesson_id}/solutions`,
      {
        method: "POST",
        credentials: "include",
        headers: {
          "Content-Type": "application/json"
        },
        body: JSON.stringify(solutiondata)
      }
    );
    if (response.ok) dispatch(requestSolutions());
    if (!response.ok) throw await createError(response);
  };
}
function updateSolution(solutiondata) {
  return async dispatch => {
    let response = await fetch(`${URL_SOLUTION}/${solutiondata.id}`, {
      method: "PATCH",
      credentials: "include",
      headers: {
        "Content-Type": "application/json"
      },
      body: JSON.stringify(solutiondata)
    });
    if (response.ok) dispatch(requestSolutions());
    if (!response.ok) throw await createError(response);
  };
}

function requestGrades() {
  return async dispatch => {
    try {
      let response = await fetch(`${API_GRADES}`, {
        credentials: "include",
        headers: {
          "Content-Type": "application/json"
        }
      });
      if (!response.ok) throw await createError(response);
      let data = await response.json();
      dispatch({ type: "FETCH_DATA_GRADES", payload: data });
    } catch {
      dispatch({ type: "LOGOUT" });
    }
  };
}

export {
  login,
  logout,
  requestUsersList,
  requestModulos,
  requestSublesson,
  requestSolutions,
  createSolution,
  updateSolution,
  requestGrades
};
