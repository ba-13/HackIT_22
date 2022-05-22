import React from "react";
import Profiles from "./profiles";
import Problem from "./problem";
import { ProfilesData } from "../data/data_profiles";
import { Problems } from "../data/data_problems";
import SearchBox from "./SearchBox";

let len = Problems.length;
let initial_state = "0";

export default class Board extends React.Component {
  constructor() {
    super();
    this.state = {
      stateType: initial_state,
      searchField: "",
    };
  }
  handleClick = (e) => {
    this.setState({ stateType: e.target.dataset.id });
  };
  // console.log(stateType);
  render() {
    ProfilesData.sort((a, b) => {
      if (a.score !== "NA" && b.score !== "NA") return b.score - a.score;
      else return -1;
    });
    ProfilesData.map((val, idx) => {
      val.pos = String(idx + 1);
      return val;
    });
    const filteredProfilesData = ProfilesData.filter((p) => {
      return (
        p.name.toLowerCase().includes(this.state.searchField.toLowerCase()) ||
        p.roll.includes(this.state.searchField) ||
        p.pos.includes(this.state.searchField)
      );
    });
    // console.log(filteredProfilesData.length);
    return (
      <div className="board">
        <h1 className="title">HackIT '22</h1>
        <h1 className="leaderboard">Leaderboard</h1>
        <div className="duration">
          <button onClick={this.handleClick} data-id="0">
            Current Assignment
          </button>
          <button onClick={this.handleClick} data-id="1">
            Previous Assignment
          </button>
          <button onClick={this.handleClick} data-id="-1">
            All Assignments
          </button>
        </div>
        <div>
          <Problem
            ps={problem_statement(Problems, this.state.stateType)}
          ></Problem>
        </div>
        <div>
          <SearchBox
            onChange={(e) => this.setState({ searchField: e.target.value })}
            placeholder="Search"
          ></SearchBox>
        </div>
        <Profiles
          Leaderboard={filter_data(filteredProfilesData, this.state.stateType)}
        ></Profiles>
      </div>
    );
  }
}

function problem_statement(data, type_) {
  let problem;
  if (len === 0) {
    if (type_ === "-1") {
      problem = "Total Number of Assignments : " + String(len);
    } else {
      problem = "Not present!";
    }
  } else if (len === 1) {
    if (type_ === "0") {
      problem = "Assignment " + String(len - type_) + " : " + data[len - 1];
    } else if (type_ === "1") {
      problem = "Not present!";
    } else {
      problem = "Total Number of Assignments : " + String(len);
    }
  } else {
    if (type_ === "0")
      problem = "Assignment " + String(len - type_) + " : " + data[len - 1];
    else if (type_ === "1")
      problem = "Assignment " + String(len - type_) + " : " + data[len - 2];
    else problem = "Total Number of Assignments : " + String(len);
  }
  // console.log(problem);
  return problem;
}

function filter_data(data, type_) {
  // console.log("Changing to ", type_, typeof type_);
  let dataNew = data.map((val, idx) => {
    let c = val.scores.length; // string to array
    let scores = Array.from({ length: c }, (_, i) => 0);
    for (let ch = 0; ch < c; ch++) {
      scores[ch] = val.scores[ch] === "a" ? 10 : parseInt(val.scores[ch]);
    }
    if (len === 0) {
      val.score = "NA";
    } else if (len === 1) {
      if (type_ === "0" || type_ === "-1") val.score = scores[len - 1];
      else if (type_ === "1") val.score = "NA";
    } else {
      if (type_ === "0") val.score = scores[len - 1];
      else if (type_ === "1") val.score = scores[len - 2];
      else if (type_ === "-1")
        val.score = scores.reduce((prev, curr) => {
          return curr + prev;
        }, 0);
    }
    return val;
  });
  // console.log("from filter_data : ", dataNew[0].score);
  dataNew.sort((a, b) => {
    if (a.score !== "NA" && b.score !== "NA") return b.score - a.score;
    else return -1;
  });
  return dataNew;
}
