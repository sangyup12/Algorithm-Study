// .github/scripts/increment-progress.js
// README.md 안의 progress 배지 숫자를 +1 올려서 저장한다.

const fs = require("fs");
const path = require("path");

const README = path.join(process.cwd(), "README.md");
if (!fs.existsSync(README)) {
  console.log("README.md not found. Skip.");
  process.exit(0);
}

let content = fs.readFileSync(README, "utf8");

// progress/<숫자> 패턴을 찾아서 증가시키기 (README 내에 여러 개 있어도 전부 +1)
const badgeRegex = /https:\/\/us-central1-progress-markdown\.cloudfunctions\.net\/progress\/(\d+)/g;

let changed = false;

content = content.replace(badgeRegex, (match, group1) => {
  const current = parseInt(group1, 10);
  if (Number.isNaN(current)) return match;

  const next = current + 1; // 상한 없이 +1
  const updated = match.replace(/progress\/\d+/, `progress/${next}`);
  if (updated !== match) changed = true;
  return updated;
});

if (!changed) {
  console.log("No progress badge found or no change made.");
  process.exit(0);
}

fs.writeFileSync(README, content, "utf8");
console.log("Progress badge incremented by 1 → README updated.");
