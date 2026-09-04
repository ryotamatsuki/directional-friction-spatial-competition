from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
FREEZE_ID = "DFSC-THEORY-2026-09-04-v1"
REQUIRED = [
    ROOT / "model/CANONICAL_THEORY_FREEZE.md",
    ROOT / "theory/FREEZE_MANIFEST.yaml",
    ROOT / "verification/symbolic/stage3u_frequency_feedback_preflight.py",
    ROOT / "verification/symbolic/stage5u_minimum_service_floor.py",
    ROOT / "verification/symbolic/stage7u_welfare_generality.py",
    ROOT / "verification/numerical/stage5u_neighborhood_audit.py",
    ROOT / "verification/numerical/stage7u_power_waiting_robustness.py",
]

missing = [str(p.relative_to(ROOT)) for p in REQUIRED if not p.exists()]
if missing:
    raise SystemExit(f"Missing frozen reproducibility inputs: {missing}")

for rel in ["model/CANONICAL_THEORY_FREEZE.md", "theory/FREEZE_MANIFEST.yaml"]:
    text = (ROOT / rel).read_text(encoding="utf-8")
    if FREEZE_ID not in text:
        raise SystemExit(f"Freeze ID mismatch in {rel}")

print(f"Freeze integrity: PASS ({FREEZE_ID})")
