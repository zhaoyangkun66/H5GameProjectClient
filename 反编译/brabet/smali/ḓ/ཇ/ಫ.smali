.class public Lḓ/ཇ/ಫ;
.super Lḓ/ཇ/ㄏ;
.source ""


# direct methods
.method public static final உ(Ljava/io/File;Lḓ/ཇ/ᆻ;)Lḓ/ཇ/ḓ;
    .locals 1

    const-string v0, "$this$walk"

    invoke-static {p0, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lḓ/ཇ/ḓ;

    invoke-direct {v0, p0, p1}, Lḓ/ཇ/ḓ;-><init>(Ljava/io/File;Lḓ/ཇ/ᆻ;)V

    return-object v0
.end method

.method public static final 䂻(Ljava/io/File;)Lḓ/ཇ/ḓ;
    .locals 1

    const-string v0, "$this$walkBottomUp"

    invoke-static {p0, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lḓ/ཇ/ᆻ;->㚬:Lḓ/ཇ/ᆻ;

    invoke-static {p0, v0}, Lḓ/ཇ/ಫ;->உ(Ljava/io/File;Lḓ/ཇ/ᆻ;)Lḓ/ཇ/ḓ;

    move-result-object p0

    return-object p0
.end method
