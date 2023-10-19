.class public final Lḓ/ཇ/ḓ$䂻$䂻;
.super Lḓ/ཇ/ḓ$㚬;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lḓ/ཇ/ḓ$䂻;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "\u40bb"
.end annotation


# instance fields
.field public 䂻:Z


# direct methods
.method public constructor <init>(Lḓ/ཇ/ḓ$䂻;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    const-string p1, "rootFile"

    invoke-static {p2, p1}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lḓ/ཇ/ḓ$㚬;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public 䂻()Ljava/io/File;
    .locals 1

    iget-boolean v0, p0, Lḓ/ཇ/ḓ$䂻$䂻;->䂻:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lḓ/ཇ/ḓ$䂻$䂻;->䂻:Z

    invoke-virtual {p0}, Lḓ/ཇ/ḓ$㚬;->உ()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
