/** @jsx jsx */
import { jsx, keyframes } from "@emotion/core";
import React, { useState, useEffect } from "react";
import NavItem from "./NavItem";
import { GiSwordwoman } from "react-icons/gi";
import { GoBook } from "react-icons/go";
import { MdInsertChart } from "react-icons/md";
import { IoMdHome } from "react-icons/io";
import useWindowDimensions from "./Hooks/useWindowDimensions";

function HomeIcon() {
  return <span css={{ fontWeight: "bold", fontSize: "20px" }}>{"{ca}"}</span>;
}

function Nav({ styles }) {
  const { height, width } = useWindowDimensions();

  const slideInAppear = keyframes`
  0% {
            transform: translateX(-50%);
            opacity: 0;
  }
  50%
    {
      transform: translateX(0);
    }
  100% {
    opacity: 1;
  }
 
 `;

  const [menuOpen, setMenuOpen] = useState(false);
  const [fade, setFade] = useState(false);

  function handleMenuClick() {
    setMenuOpen(!menuOpen);
    setFade(!fade);
  }

  return (
    <div
      css={{
        backgroundColor: "rgb(28,32,34)",
        color: "rgba(255, 255, 255, 0.6)",
        height: "100vh",
        position: "fixed",
        display: "flex",
        flexDirection: "column",
        transition: "all 0.3s ease",
        "@media (max-width: 450px)": {
          height: menuOpen ? "270px" : "55px",
          width: "55px",
          borderRadius: menuOpen ? "50px" : "55px",
          top: "5px",
          left: "5px"
        },
        ...styles
      }}
    >
      {width > 450 ? (
        <NavItem url={"/lessons"} title={"Home"} Icon={HomeIcon} />
      ) : (
        <>
          <div
            onClick={handleMenuClick}
            onAnimationEnd={() => {
              setFade(fade);
            }}
            css={{
              display: "flex",
              fontSize: "27px",
              width: "56px",
              height: "56px",
              alignItems: "center",
              justifyContent: "center",
              position: "relative",
              color: "white",
              cursor: "pointer",
              animation: fade ? `${slideInAppear} 2000ms forwards` : ``,
              ":hover": {
                "& .toast": {
                  maxWidth: "150px",
                  visibility: "visible",
                  opacity: "1",
                  transitionDelay: "0.5s"
                }
              },
              "@media (max-width: 450px)": {
                // display: menuOpen ? "fixed" : ""
              }
            }}
          >
            <div
              css={{
                transition: "all .4s ease",
                ":hover": { color: "rgb(255, 255, 255)" },
                display: "flex",
                alignItems: "center",
                justifyContent: "center"
              }}
            >
              <HomeIcon />
            </div>
            <div
              className="toast"
              css={{
                position: "absolute",
                top: "auto",
                bottom: "auto",
                left: "70px",
                fontSize: "15px",
                backgroundColor: "rgb(28,32,34)",
                padding: "4px",
                borderRadius: "3px",
                color: "white",
                maxWidth: "0px",
                opacity: "0",
                visibility: "hidden",
                transition: "all 0.4s ease",
                transitionDelay: "0s",
                zIndex: "100"
              }}
            >
              {"Expand"}
            </div>
          </div>
          <div onClick={handleMenuClick}>
            <NavItem
              styles={{
                animation: `${slideInAppear} 1500ms forwards`,
                "@media (max-width: 450px)": {
                  display: menuOpen ? "flex" : "none"
                }
              }}
              url={"/lessons"}
              title={"Home"}
              Icon={IoMdHome}
            />
          </div>
        </>
      )}

      <hr
        css={{
          width: "40px",
          outline: "none",
          padding: "0px auto",
          margin: "0px auto",
          borderTop: "1px solid rgba(255, 255, 255, 0.1)",
          borderLeft: "0px ",
          borderRight: "0px ",
          borderBottom: "0px "
        }}
      />
      <NavItem
        styles={{
          animation: `${slideInAppear} 2000ms forwards`,
          "@media (max-width: 450px)": {
            display: menuOpen ? "flex" : "none"
          }
        }}
        url={"/miniassignments"}
        title={"Miniassignments"}
        Icon={GiSwordwoman}
      />
      <NavItem
        styles={{
          animation: `${slideInAppear} 2500ms forwards`,
          "@media (max-width: 450px)": {
            display: menuOpen ? "flex" : "none"
          }
        }}
        url={"/lessons"}
        title={"Lessons"}
        Icon={GoBook}
      />
      <NavItem
        styles={{
          animation: `${slideInAppear} 3000ms forwards`,
          "@media (max-width: 450px)": {
            display: menuOpen ? "flex" : "none"
          }
        }}
        url={"/grades"}
        title={"Grades"}
        Icon={MdInsertChart}
      />

      {/* <NavItem
        url={"/titleapp"}
        title={"Title application coming soon"}
        Icon={GiPodium}
      /> */}
    </div>
  );
}

export default Nav;
