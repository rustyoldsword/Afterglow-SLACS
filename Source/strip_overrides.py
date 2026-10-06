# Rewrite SLACS_2_Plus_SCO.esp without the 33 MGEF override records it carries for SexLab.esm.
# Those overrides exist only to attach SLACS_CumEffectHandler to SexLab's cum effects; they are
# stale copies (KWDA/DATA/FULL differ from SexLab P+ 2.18.1) and the patched SLACS_Main listens
# to SexLab P+ mod events instead.
import struct, sys
# usage: strip_overrides.py <original SLACS_2_Plus_SCO.esp> <output esp>
src = sys.argv[1]
dst = sys.argv[2]
d = open(src, 'rb').read()

def subs(data):
    j=0; out=[]
    while j < len(data)-6:
        st=data[j:j+4]; ss=struct.unpack('<H',data[j+4:j+6])[0]; out.append((st,data[j+6:j+6+ss])); j+=6+ss
    return out
hsize = struct.unpack('<I', d[4:8])[0]
masters = [v.split(b'\0')[0].decode() for s,v in subs(d[24:24+hsize]) if s==b'MAST']
own = len(masters)
removed = []

def rebuild(i, end):
    """Return rebuilt bytes for the records/groups in d[i:end]."""
    out = bytearray()
    while i < end:
        t = d[i:i+4]
        if t == b'GRUP':
            gsize = struct.unpack('<I', d[i+4:i+8])[0]
            inner = rebuild(i+24, i+gsize)
            if inner:  # drop groups that became empty
                hdr = bytearray(d[i:i+24]); hdr[4:8] = struct.pack('<I', 24+len(inner))
                out += hdr + inner
            i += gsize
        else:
            size, flags, fid = struct.unpack('<IiI', d[i+4:i+16])
            rec = d[i:i+24+size]
            if t == b'MGEF' and (fid >> 24) < own:
                removed.append(fid)
            else:
                out += rec
            i += 24+size
    return bytes(out)

body = rebuild(24+hsize, len(d))
# patch HEDR numRecords (float version, uint32 numRecords, uint32 nextObjectId)
hdr = bytearray(d[:24+hsize])
p = 24
while p < len(hdr):
    st = hdr[p:p+4]; ss = struct.unpack('<H', hdr[p+4:p+6])[0]
    if st == b'HEDR':
        n = struct.unpack('<I', hdr[p+10:p+14])[0]
        hdr[p+10:p+14] = struct.pack('<I', n - len(removed)); print("HEDR numRecords", n, "->", n-len(removed))
    p += 6+ss
open(dst, 'wb').write(bytes(hdr) + body)
print("removed", len(removed), "override MGEFs; out size", len(hdr)+len(body), "(was", len(d), ")")
