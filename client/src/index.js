import React from "react";
import ReactDOM from "react-dom";
import { Global } from "@emotion/core";
import { Provider } from "react-redux";
import store from "./store";

import App from "./App";

ReactDOM.render(
  <Provider store={store}>
    <Global
      styles={{
        body: {
          fontFamily:
            "'Roboto Slab', 'BlinkMacSystemFont', 'Segoe UI', 'Roboto', 'Helvetica Neue','Helvetica','sans-serif'",
          margin: 0,
          backgroundColor: "#FFF"
        },
        a: { textDecoration: "inherit", color: "inherit" },
        "h1, h2, h3, p, ul, li": { margin: 0, padding: 0 }
      }}
    />
    <App />
  </Provider>,
  document.getElementById("root")
);
