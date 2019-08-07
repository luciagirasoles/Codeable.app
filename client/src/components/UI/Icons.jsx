/** @jsx jsx */
import { jsx, keyframes } from "@emotion/core";
import { FaCheck, FaCheckDouble, FaEllipsisH } from "react-icons/fa";

const animateProfileGate = keyframes`
0% {
 opacity: 0;
 transform: scale(5);
}
100% {
 opacity: 1;
 transform: scale(1);
}
`;

function SentIcon({ styles, ...props }) {
  return (
    <div>
      <FaCheckDouble
        arial-label="Status Sent"
        title="Status Sent"
        css={{
          justifyContent: "center",
          fontSize: "xx-large",
          color: "#4ea64e",
          animation: `${animateProfileGate} 450ms ease 1`,
          ...styles
        }}
      />
    </div>
  );
}
function PendingIcon({ styles, ...props }) {
  return (
    <div>
      <FaEllipsisH
        arial-label="Status Pending"
        title="Status Pending"
        css={{
          justifyContent: "center",
          fontSize: "xx-large",
          color: "#f88f51",
          animation: `${animateProfileGate} 300ms ease 1`,
          ...styles
        }}
      />
    </div>
  );
}

function SavedIcon({ styles, ...props }) {
  return (
    <div>
      <FaCheck
        arial-label="Status Saved"
        title="Status Saved"
        css={{
          justifyContent: "center",
          fontSize: "xx-large",
          color: "#0aa5fd",
          animation: `${animateProfileGate} 450ms ease 1`,
          ...styles
        }}
      />
    </div>
  );
}

export { SentIcon, SavedIcon, PendingIcon };
