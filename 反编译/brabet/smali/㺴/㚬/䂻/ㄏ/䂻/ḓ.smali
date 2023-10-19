.class public final L㺴/㚬/䂻/ㄏ/䂻/ḓ;
.super L㺴/㚬/䂻/ㄏ/䂻/ᆻ;
.source ""


# instance fields
.field public final 㚬:S

.field public final 㺴:S


# direct methods
.method public constructor <init>(L㺴/㚬/䂻/ㄏ/䂻/ᆻ;II)V
    .locals 0

    invoke-direct {p0, p1}, L㺴/㚬/䂻/ㄏ/䂻/ᆻ;-><init>(L㺴/㚬/䂻/ㄏ/䂻/ᆻ;)V

    int-to-short p1, p2

    iput-short p1, p0, L㺴/㚬/䂻/ㄏ/䂻/ḓ;->㚬:S

    int-to-short p1, p3

    iput-short p1, p0, L㺴/㚬/䂻/ㄏ/䂻/ḓ;->㺴:S

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    iget-short v0, p0, L㺴/㚬/䂻/ㄏ/䂻/ḓ;->㚬:S

    iget-short v1, p0, L㺴/㚬/䂻/ㄏ/䂻/ḓ;->㺴:S

    const/4 v2, 0x1

    shl-int v3, v2, v1

    sub-int/2addr v3, v2

    and-int/2addr v0, v3

    shl-int v1, v2, v1

    or-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "<"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-short v3, p0, L㺴/㚬/䂻/ㄏ/䂻/ḓ;->㺴:S

    shl-int v3, v2, v3

    or-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3e

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public 㚬(L㺴/㚬/䂻/ಫ/உ;[B)V
    .locals 1

    iget-short p2, p0, L㺴/㚬/䂻/ㄏ/䂻/ḓ;->㚬:S

    iget-short v0, p0, L㺴/㚬/䂻/ㄏ/䂻/ḓ;->㺴:S

    invoke-virtual {p1, p2, v0}, L㺴/㚬/䂻/ಫ/உ;->㚬(II)V

    return-void
.end method
