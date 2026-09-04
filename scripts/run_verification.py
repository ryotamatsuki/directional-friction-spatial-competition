from __future__ import annotations

import argparse
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
SYMBOLIC = [
    ROOT / "verification/symbolic/stage3u_frequency_feedback_preflight.py",
    ROOT / "verification/symbolic/stage5u_minimum_service_floor.py",
    ROOT / "verification/symbolic/stage7u_welfare_generality.py",
    ROOT / "verification/symbolic/stage11u_global_deviation_reaudit.py",
]
NUMERICAL = [
    ROOT / "verification/numerical/stage5u_neighborhood_audit.py",
    ROOT / "verification/numerical/stage7u_power_waiting_robustness.py",
]


def run(files: list[Path]) -> None:
    build = ROOT / "build"
    build.mkdir(exist_ok=True)
    transcript: list[str] = []
    for path in files:
        proc = subprocess.run(
            [sys.executable, str(path)],
            cwd=ROOT,
            text=True,
            capture_output=True,
        )
        header = f"===== {path.relative_to(ROOT)} ====="
        print(header)
        print(proc.stdout, end="")
        if proc.stderr:
            print(proc.stderr, file=sys.stderr, end="")
        transcript.extend([header, proc.stdout, proc.stderr])
        if proc.returncode != 0:
            (build / "verification.log").write_text("\n".join(transcript), encoding="utf-8")
            raise SystemExit(proc.returncode)
    (build / "verification.log").write_text("\n".join(transcript), encoding="utf-8")


def main() -> None:
    parser = argparse.ArgumentParser()
    group = parser.add_mutually_exclusive_group(required=True)
    group.add_argument("--symbolic", action="store_true")
    group.add_argument("--numerical", action="store_true")
    group.add_argument("--all", action="store_true")
    args = parser.parse_args()
    if args.symbolic:
        run(SYMBOLIC)
    elif args.numerical:
        run(NUMERICAL)
    else:
        run(SYMBOLIC + NUMERICAL)


if __name__ == "__main__":
    main()
