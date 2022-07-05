import React from "react";

export default function Profiles({ Leaderboard, searchField }) {
  return <div id="profile">{Item(Leaderboard, searchField)}</div>;
}

function Item(data, searchField) {
  // console.log("Reloaded!");
  // console.log(data[0].score);
  const filteredProfilesData = data.filter((p) => {
    return (
      p.name.toLowerCase().includes(searchField.toLowerCase()) ||
      p.roll.includes(searchField) ||
      p.pos.includes(searchField)
    );
  });
  return (
    <>
      {filteredProfilesData.map((val, idx) => {
        let c = val.scores.length;
        let scores = Array.from({ length: c }, (_, i) => 0);
        for (let ch = 0; ch < c; ch++) {
          scores[ch] = val.scores[ch] === "a" ? 10 : parseInt(val.scores[ch]);
        }
        if (val.score === 0) {
          return (
            <div className="flex" key={idx}>
              <div className="item">
                {/* <img src={val.img} alt="" /> */}
                {/* <div className="bold">{val.pos}.</div> */}
                <div className="info">
                  <h3 className="name text-dark">{val.name}</h3>
                  <span>{val.roll}</span>
                </div>
              </div>
              <div className="item zero">
                <h3 className="name text-dark">{val.score}</h3>
              </div>
            </div>
          );
        } else {
          return (
            <div className="flex" key={idx}>
              <div className="item">
                {/* <img src={val.img} alt="" /> */}
                {/* <div className="bold">{val.pos}.</div> */}
                <div className="info">
                  <h3 className="name text-dark">{val.name}</h3>
                  <span>{val.roll}</span>
                </div>
              </div>
              <div className="item">
                <h3 className="name text-dark">{val.score}</h3>
              </div>
            </div>
          );
        }
      })}
    </>
  );
}
