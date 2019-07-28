export const loadState = () => {
  try {
    const serializedState = localStorage.getItem("state user");
    if (serializedState === null) {
      return undefined;
    }
    return JSON.parse(serializedState);
  } catch (err) {
    return undefined;
  }
};

export const saveState = state => {
  try {
    const serializedState = JSON.stringify(state.user);
    localStorage.setItem("state user", serializedState);
  } catch (err) {
    console.log("errores ls ", err);
  }
};
