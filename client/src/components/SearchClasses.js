/** @jsx jsx */
import React, { useEffect, useState } from "react";
import { jsx, keyframes } from "@emotion/core";
import { Redirect, Link } from "@reach/router";
import { useUser, useLessons } from "../redux/selector";

function SearchClasses({ searchTerm, isWriting }) {
  const user = useUser();
  const lessons = Object.values(useLessons());
  const [filteredLessons, setFilteredLessons] = useState([]);

  const animateListItem = keyframes`
   0% {
 
    opacity: 0;
  transform: rotateX(-90deg);
  transition: all 0.5s cubic-bezier(.36,-0.64,.34,1.76);
  }
  100% {
    opacity: 1;
  transform: none;
  transition: all 0.5s cubic-bezier(.36,-0.64,.34,1.76);
  }
 `;

  const cssLi = {
    perpective: "100px",
    color: "blue",
    padding: "5px 10px",
    display: "block",
    animation: `${animateListItem} 450ms ease 1`
  };

  const filterItems = (arr, query) => {
    return arr.filter(
      el => el.title.toLowerCase().indexOf(query.toLowerCase()) !== -1
    );
  };
  useEffect(() => {
    if (!isWriting && searchTerm) {
      const filtered = filterItems(Object.values(lessons), searchTerm);
      setFilteredLessons(filtered);
    }
  }, [isWriting]);

  if (!user.currentUser.name) return <Redirect to="/" noThrow />;

  return (
    <>
      <p>{!searchTerm && "Enter your search.."}</p>
      <p>{!filteredLessons.length && searchTerm && "Not found"}</p>
      {searchTerm && filteredLessons
        ? Object.values(filteredLessons).map(lesson => {
            return (
              <Link
                to={`/lessons/module/${lesson.moduleId}/lesson/${
                  lesson.id
                }/sublesson/1`}
                css={cssLi}
                key={JSON.stringify(lesson)}
              >
                {lesson.title}
              </Link>
            );
          })
        : null}
    </>
  );
}

export default SearchClasses;
