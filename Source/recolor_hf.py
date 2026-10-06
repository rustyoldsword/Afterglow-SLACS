# Make SLACS hand/foot overlays visible: RGB -> white, alpha x3 (they ship nearly black and
# nearly transparent; the LoversLab thread reports the same). Alpha shape is preserved.
import os, subprocess, time, shutil
import numpy as np
from PIL import Image

import sys
# usage: recolor_hf.py <original SLACS 2 SCO Textures dir> <output Textures dir> <work dir> <texconv.exe>
SRC, DST, WORK, TEXCONV = sys.argv[1:5]



ALPHA_GAIN = 3.0
RGB = 240.0

done = 0
for setname in ("slacs2", "slacs2_ube"):
    for part in ("Footjob", "Handjob"):
        sdir = os.path.join(SRC, setname, part); ddir = os.path.join(DST, setname, part)
        wdir = os.path.join(WORK, setname, part); os.makedirs(wdir, exist_ok=True)
        for f in sorted(os.listdir(sdir)):
            if not f.lower().endswith(".dds") or f.lower().endswith("_n.dds") or f.lower().endswith("_s.dds"):
                continue
            t0 = time.time()
            im = Image.open(os.path.join(sdir, f)); im.load()
            a = np.asarray(im.convert("RGBA")).astype(np.float32)
            alpha = np.clip(a[..., 3:4] * ALPHA_GAIN, 0, 255)
            rgb = np.full_like(a[..., :3], RGB)
            out = np.ascontiguousarray(np.concatenate([rgb, alpha], axis=2).astype(np.uint8))
            png = os.path.join(wdir, os.path.splitext(f)[0] + ".png")
            Image.fromarray(out).save(png, compress_level=1)
            r = subprocess.run([TEXCONV, "-f", "BC3_UNORM", "-m", "0", "-sepalpha", "-y", "-nologo", "-o", wdir, png], capture_output=True, text=True)
            produced = os.path.join(wdir, os.path.splitext(f)[0] + ".DDS")
            if not os.path.exists(produced): produced = os.path.join(wdir, os.path.splitext(f)[0] + ".dds")
            ok = r.returncode == 0 and os.path.exists(produced)
            if ok:
                shutil.copyfile(produced, os.path.join(ddir, f)); os.remove(produced); done += 1
            print(f"{setname}/{part}/{f}: {'ok' if ok else 'FAIL'} {time.time()-t0:.1f}s", flush=True)
            if not ok: print(r.stdout, r.stderr)
            os.remove(png)
print("DONE", done)
