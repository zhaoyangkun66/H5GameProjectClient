.class public final Lḓ/ḙ/ḓ$உ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lḓ/ḙ/ḓ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "\u0b89"
.end annotation


# instance fields
.field public final 㚬:I

.field public final 䂻:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "pattern"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lḓ/ḙ/ḓ$உ;->䂻:Ljava/lang/String;

    iput p2, p0, Lḓ/ḙ/ḓ$உ;->㚬:I

    return-void
.end method

.method private final readResolve()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lḓ/ḙ/ḓ;

    iget-object v1, p0, Lḓ/ḙ/ḓ$உ;->䂻:Ljava/lang/String;

    iget v2, p0, Lḓ/ḙ/ḓ$உ;->㚬:I

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    const-string v2, "Pattern.compile(pattern, flags)"

    invoke-static {v1, v2}, Lḓ/ᓭ/㺴/ಫ;->㚬(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lḓ/ḙ/ḓ;-><init>(Ljava/util/regex/Pattern;)V

    return-object v0
.end method
