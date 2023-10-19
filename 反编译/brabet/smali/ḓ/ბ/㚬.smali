.class public abstract Lḓ/ბ/㚬;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lḓ/ბ/㚬$உ;
    }
.end annotation


# static fields
.field public static final 㚬:Lḓ/ბ/㚬$உ;

.field public static final 䂻:Lḓ/ბ/㚬;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lḓ/ბ/㚬$உ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lḓ/ბ/㚬$உ;-><init>(Lḓ/ᓭ/㺴/ᆻ;)V

    sput-object v0, Lḓ/ბ/㚬;->㚬:Lḓ/ბ/㚬$உ;

    sget-object v0, Lḓ/ἥ/䂻;->உ:Lḓ/ἥ/உ;

    invoke-virtual {v0}, Lḓ/ἥ/உ;->䂻()Lḓ/ბ/㚬;

    move-result-object v0

    sput-object v0, Lḓ/ბ/㚬;->䂻:Lḓ/ბ/㚬;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic உ()Lḓ/ბ/㚬;
    .locals 1

    sget-object v0, Lḓ/ბ/㚬;->䂻:Lḓ/ბ/㚬;

    return-object v0
.end method


# virtual methods
.method public ḓ(II)I
    .locals 3

    invoke-static {p1, p2}, Lḓ/ბ/㺴;->䂻(II)V

    sub-int v0, p2, p1

    if-gtz v0, :cond_2

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lḓ/ბ/㚬;->㚬()I

    move-result v0

    if-le p1, v0, :cond_1

    goto :goto_0

    :cond_1
    if-le p2, v0, :cond_0

    return v0

    :cond_2
    :goto_1
    neg-int p2, v0

    and-int/2addr p2, v0

    if-ne p2, v0, :cond_3

    invoke-static {v0}, Lḓ/ბ/㺴;->㚬(I)I

    move-result p2

    invoke-virtual {p0, p2}, Lḓ/ბ/㚬;->䂻(I)I

    move-result p2

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lḓ/ბ/㚬;->㚬()I

    move-result p2

    ushr-int/lit8 p2, p2, 0x1

    rem-int v1, p2, v0

    sub-int/2addr p2, v1

    add-int/lit8 v2, v0, -0x1

    add-int/2addr p2, v2

    if-ltz p2, :cond_3

    move p2, v1

    :goto_2
    add-int/2addr p1, p2

    return p1
.end method

.method public abstract 㚬()I
.end method

.method public abstract 㺴(I)I
.end method

.method public abstract 䂻(I)I
.end method
