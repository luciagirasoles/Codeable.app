/** @jsx jsx */
import { jsx } from "@emotion/core";
import { Link } from "@reach/router";
import NavItem from "./NavItem";
import { GiSwordwoman, GiPodium } from "react-icons/gi";
import { GoBook } from "react-icons/go";
import { MdInsertChart } from "react-icons/md";

function HomeIcon() {
  return <span css={{ fontWeight: "bold", fontSize: "20px" }}>{"{ca}"}</span>;
}

function Nav({ styles }) {
  return (
    <div
      css={{
        backgroundColor: "rgb(28,32,34)",
        color: "rgba(255, 255, 255, 0.6)",
        height: "100vh",
        position: "fixed",
        display: "flex",
        flexDirection: "column",
        ...styles
      }}
    >
      <NavItem url={"/lessons"} title={"Home"} Icon={HomeIcon} />
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
        url={"/miniassignments"}
        title={"Miniassignments"}
        Icon={GiSwordwoman}
      />
      <NavItem url={"/lessons"} title={"Lessons"} Icon={GoBook} />
      <NavItem url={"/grades"} title={"Grades"} Icon={MdInsertChart} />
      <NavItem url={"/titleapp"} title={"Title application"} Icon={GiPodium} />
    </div>
  );
}

export default Nav;
