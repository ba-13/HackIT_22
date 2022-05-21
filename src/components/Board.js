import React, { useState } from "react";
import Profiles from "./profiles";
import Problem from "./problem";
import { ProfilesData } from "../data/data_profiles";
import { Problems } from "../data/data_problems";

let len = Problems.length;

export default function Board() {
  const [stateType, setType] = useState(-1);
  const handleClick = (e) => {
    setType(e.target.dataset.id);
  };
  // console.log(stateType);
  return (
    <div className="board">
      <h1 className="leaderboard">Leaderboard</h1>
      <div className="duration">
        <button onClick={handleClick} data-id="0">
          Current Assignment
        </button>
        <button onClick={handleClick} data-id="1">
          Previous Assignment
        </button>
        <button onClick={handleClick} data-id="-1">
          All time
        </button>
      </div>
      <div>
        <Problem ps={problem_statement(Problems, stateType)}></Problem>
      </div>
      <Profiles Leaderboard={filter_data(ProfilesData, stateType)}></Profiles>
    </div>
  );
}

function problem_statement(data, type_) {
  let problem;
  if (type_ === "0")
    problem = "Assignment " + String(len - type_) + " : " + data[0];
  else if (type_ === "1")
    problem = "Assignment " + String(len - type_) + " : " + data[1];
  else problem = "Total Number of Assignments : " + String(len);
  // console.log(problem);
  return problem;
}

function filter_data(data, type_) {
  // console.log("Changing to ", type_, typeof type_);
  let dataNew = data.map((val, idx) => {
    let c = val.scores.length;
    let scores = Array.from({ length: c }, (_, i) => 0);
    for (let ch = 0; ch < c; ch++) {
      scores[ch] = val.scores[ch] === "a" ? 10 : parseInt(val.scores[ch]);
    }
    if (type_ === "0") val.score = scores[0];
    else if (type_ === "1") val.score = scores[1];
    else if (type_ === "-1")
      val.score = scores.reduce((prev, curr) => {
        return curr + prev;
      }, 0);
    return val;
  });
  // console.log("from filter_data : ", dataNew[0].score);
  dataNew.sort((a, b) => {
    return b.score - a.score;
  });
  return dataNew;
}
