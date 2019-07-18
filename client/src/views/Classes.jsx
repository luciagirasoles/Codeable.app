/** @jsx jsx */
import React from "react";
import { jsx } from "@emotion/core";
import Module from "../components/Module";
import { Redirect } from "@reach/router";
import { useUser } from "../redux/selector";
import Header from "../components/Header";

let data = [
  {
    name: "Ruby",
    description: "Aqui aprendemos muchas cosas juntos",
    resources: [
      {
        title: "Intro to Ruby",
        mainResources: [
          {
            tag: "Overview",
            title: "Intro to Class"
          },
          {
            tag: "Workshop",
            title: "Create a simple login"
          },
          {
            tag: "M-Assign",
            title: "Build a simple calculator"
          }
        ],
        extraResources: [
          {
            tag: "Exercises",
            title: "Practice"
          },
          {
            tag: "Blog",
            title: "Blog"
          }
        ]
      },
      {
        title: "Intro to Ruby",
        mainResources: [
          {
            tag: "Overview",
            title: "Intro to Class"
          },
          {
            tag: "Workshop",
            title: "Create a simple login"
          },
          {
            tag: "M-Assign",
            title: "Build a simple calculator"
          }
        ],
        extraResources: [
          {
            tag: "Exercises",
            title: "Practice"
          },
          {
            tag: "Blog",
            title: "Blog"
          }
        ]
      },
      {
        title: "Intro to Ruby",
        mainResources: [
          {
            tag: "Overview",
            title: "Intro to Class"
          },
          {
            tag: "Workshop",
            title: "Create a simple login"
          },
          {
            tag: "M-Assign",
            title: "Build a simple calculator"
          }
        ],
        extraResources: [
          {
            tag: "Exercises",
            title: "Practice"
          },
          {
            tag: "Blog",
            title: "Blog"
          }
        ]
      }
    ]
  },
  {
    name: "Rails",
    description: "Aqui aprendemos Rails",
    resources: [
      {
        title: "Intro to Rails",
        mainResources: [
          {
            tag: "Overview",
            title: "Intro to Class"
          },
          {
            tag: "Workshop",
            title: "Create a simple login"
          },
          {
            tag: "M-Assign",
            title: "Build a simple calculator"
          }
        ],
        extraResources: [
          {
            tag: "Exercises",
            title: "Practice"
          },
          {
            tag: "Blog",
            title: "Blog"
          }
        ]
      },
      {
        title: "Intro to Rails 2",
        mainResources: [
          {
            tag: "Overview",
            title: "Intro to Class"
          },
          {
            tag: "Workshop",
            title: "Create a simple login"
          },
          {
            tag: "M-Assign",
            title: "Build a simple calculator"
          }
        ],
        extraResources: [
          {
            tag: "Exercises",
            title: "Practice"
          },
          {
            tag: "Blog",
            title: "Blog"
          }
        ]
      },
      {
        title: "Intro to Rails 3",
        mainResources: [
          {
            tag: "Overview",
            title: "Intro to Class"
          },
          {
            tag: "Workshop",
            title: "Create a simple login"
          },
          {
            tag: "M-Assign",
            title: "Build a simple calculator"
          }
        ],
        extraResources: [
          {
            tag: "Exercises",
            title: "Practice"
          },
          {
            tag: "Blog",
            title: "Blog"
          }
        ]
      }
    ]
  }
];

function Class() {
  const user = useUser();
  console.log(user);

  if (!user.currentUser.name) return <Redirect to="/" noThrow />;

  return (
    <div css={{ backgroundColor: "#eee", height: "100vh" }}>
      <Header />
      {data.map(value => {
        return <Module module={value} />;
      })}
    </div>
  );
}

export default Class;
