import { createStore, applyMiddleware, compose } from "redux";
import reducer from "./redux/reducer";
import { loadState, saveState } from "./localStorage";
import logger from "redux-logger";
import thunk from "redux-thunk";
import throttle from "lodash.throttle";

const persistedState = loadState();

const composer = window.__REDUX_DEVTOOLS_EXTENSION_COMPOSE__ || compose;

const store = createStore(
  reducer,
  { user: persistedState },
  composer(applyMiddleware(thunk, logger))
);

store.subscribe(
  throttle(() => {
    saveState(store.getState());
  }, 1000)
);

export default store;
