import React from "react";

export default function Profiles({ Leaderboard }) {
  return <div id="profile">{Item(Leaderboard)}</div>;
}

function Item(data) {
  // console.log("Reloaded!");
  // console.log(data[0].score);
  return (
    <>
      {data.map((val, idx) => {
        let c = val.scores.length;
        let scores = Array.from({ length: c }, (_, i) => 0);
        for (let ch = 0; ch < c; ch++) {
          scores[ch] = val.scores[ch] === "a" ? 10 : parseInt(val.scores[ch]);
        }
        return (
          <div className="flex" key={idx}>
            <div className="item">
              {/* <img src={val.img} alt="" /> */}
              <div className="bold">{val.pos}.</div>
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
      })}
    </>
  );
}
