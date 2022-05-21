import React from "react";
import Profiles from "./profiles";
import Problem from "./problem";
import { ProfilesData } from "../data/data_profiles";
import { Problems } from "../data/data_problems";
import SearchBox from "./search_box/SearchBox";

let len = Problems.length;

export default class Board extends React.Component {
  constructor() {
    super();
    this.state = {
      stateType: -1,
      searchField: "",
    };
  }
  handleClick = (e) => {
    this.setState({ stateType: e.target.dataset.id });
  };
  // console.log(stateType);
  render() {
    const filteredProfilesData = ProfilesData.filter((p) => {
      return (
        p.name.toLowerCase().includes(this.state.searchField.toLowerCase()) ||
        p.roll.includes(this.state.searchField)
      );
    });
    console.log(filteredProfilesData.length);
    return (
      <div className="board">
        <h1 className="title">HackIT</h1>
        <h1 className="leaderboard">Leaderboard</h1>
        <div className="duration">
          <button onClick={this.handleClick} data-id="0">
            Current Assignment
          </button>
          <button onClick={this.handleClick} data-id="1">
            Previous Assignment
          </button>
          <button onClick={this.handleClick} data-id="-1">
            All time
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
