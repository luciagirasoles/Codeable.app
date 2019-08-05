/** @jsx jsx */
import React, { useState } from "react";
import { jsx } from "@emotion/core";
import { InputSearch } from "./UI/Inputs";
import SearchClasses from "./SearchClasses";

function Search() {
  const [searchTerm, setSearchTerm] = useState("");
  const [isWriting, setIsWriting] = React.useState(false);

  React.useEffect(() => {
    const timer = setTimeout(() => setIsWriting(false), 1000);
    return () => clearTimeout(timer);
  }, [isWriting]);

  function handleChange(event) {
    setIsWriting(true);
    setSearchTerm(event.target.value);
  }
  function handleClick(event) {
    event.preventDefault();
  }
  return (
    <>
      <form onSubmit={handleClick}>
        <InputSearch
          autoFocus
          onChange={handleChange}
          value={searchTerm}
          aria-label="Search through site content"
        />
      </form>
      <SearchClasses searchTerm={searchTerm} isWriting={isWriting} />
    </>
  );
}

export default Search;
