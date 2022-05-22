import React from "react";

export default function SearchBox(data) {
  return (
    <input
      type="search"
      className="search"
      placeholder={data.placeholder}
      onChange={data.onChange}
    />
  );
}
