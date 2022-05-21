import React from "react";
import Board from "./components/Board";
import "./components/style.css";

// function Early() {
//   return (
//     <div className="App" id="main">
//       <Board></Board>
//     </div>
//   );
// }

// let url_profiles = "";
// let url_problems = "";
class App extends React.Component {
  // async componentDidMount() {
  //   const res_problems = await (await fetch(url_problems)).json();
  //   const res_profiles = await (await fetch(url_profiles)).json();
  //   this.setState({ problems: res_problems, profiles: res_profiles });
  // }
  render() {
    return (
      <div className="App" id="main">
        <Board></Board>
      </div>
    );
  }
}
export default App;
