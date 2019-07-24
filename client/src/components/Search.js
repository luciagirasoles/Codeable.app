/** @jsx jsx */
import React, { useState } from "react";
import { jsx } from "@emotion/core";
import { InputSearch } from "../components/Ui";

import { useLessonData, useModulo } from "../redux/selector";

function Search({ styles, ...props }) {
  return <InputSearch {...props} />;
}

export default Search;
