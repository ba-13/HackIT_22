import React from "react";

export default function Problem({ ps }) {
  let words = ps.split(" ");
  // console.log(words);
  if (words.length > 6) {
    words = words.splice(0, 6);
    ps = words.join(" ") + "...";
  }
  return <h2 className="text text-dark">{ps}</h2>;
}
