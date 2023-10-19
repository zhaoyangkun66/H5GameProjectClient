.class public L㚬/ℓ/䆀/㺴;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field public static final உ:L㚬/ℓ/䆀/ಫ;

.field public static final 䂻:L㚬/䆀/ḓ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "L\u36ac/\u4180/\u1e13<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    new-instance v0, L㚬/ℓ/䆀/ㄏ;

    invoke-direct {v0}, L㚬/ℓ/䆀/ㄏ;-><init>()V

    :goto_0
    sput-object v0, L㚬/ℓ/䆀/㺴;->உ:L㚬/ℓ/䆀/ಫ;

    goto :goto_1

    :cond_0
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    new-instance v0, L㚬/ℓ/䆀/ℓ;

    invoke-direct {v0}, L㚬/ℓ/䆀/ℓ;-><init>()V

    goto :goto_0

    :cond_1
    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    new-instance v0, L㚬/ℓ/䆀/ᆻ;

    invoke-direct {v0}, L㚬/ℓ/䆀/ᆻ;-><init>()V

    goto :goto_0

    :cond_2
    const/16 v1, 0x18

    if-lt v0, v1, :cond_3

    invoke-static {}, L㚬/ℓ/䆀/䆀;->ἥ()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, L㚬/ℓ/䆀/䆀;

    invoke-direct {v0}, L㚬/ℓ/䆀/䆀;-><init>()V

    goto :goto_0

    :cond_3
    const/16 v1, 0x15

    if-lt v0, v1, :cond_4

    new-instance v0, L㚬/ℓ/䆀/ḓ;

    invoke-direct {v0}, L㚬/ℓ/䆀/ḓ;-><init>()V

    goto :goto_0

    :cond_4
    new-instance v0, L㚬/ℓ/䆀/ಫ;

    invoke-direct {v0}, L㚬/ℓ/䆀/ಫ;-><init>()V

    goto :goto_0

    :goto_1
    new-instance v0, L㚬/䆀/ḓ;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, L㚬/䆀/ḓ;-><init>(I)V

    sput-object v0, L㚬/ℓ/䆀/㺴;->䂻:L㚬/䆀/ḓ;

    return-void
.end method

.method public static உ(Landroid/content/Context;Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    .locals 2

    if-eqz p0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    invoke-static {p0, p1, p2}, L㚬/ℓ/䆀/㺴;->ᆻ(Landroid/content/Context;Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Context cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ᆻ(Landroid/content/Context;Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    .locals 2

    sget-object v0, L㚬/ℓ/䆀/㺴;->உ:L㚬/ℓ/䆀/ಫ;

    invoke-virtual {v0, p1}, L㚬/ℓ/䆀/ಫ;->ㄏ(Landroid/graphics/Typeface;)L㚬/ℓ/ḓ/㚬/㚬$䂻;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1, p2}, L㚬/ℓ/䆀/ಫ;->䂻(Landroid/content/Context;L㚬/ℓ/ḓ/㚬/㚬$䂻;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public static ḓ(Landroid/content/res/Resources;II)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static 㚬(Landroid/content/Context;L㚬/ℓ/ḓ/㚬/㚬$உ;Landroid/content/res/Resources;IIL㚬/ℓ/ḓ/㚬/䆀$உ;Landroid/os/Handler;Z)Landroid/graphics/Typeface;
    .locals 7

    instance-of v1, p1, L㚬/ℓ/ḓ/㚬/㚬$㺴;

    if-eqz v1, :cond_3

    move-object v0, p1

    check-cast v0, L㚬/ℓ/ḓ/㚬/㚬$㺴;

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-eqz p7, :cond_0

    invoke-virtual {v0}, L㚬/ℓ/ḓ/㚬/㚬$㺴;->உ()I

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_0
    if-nez p5, :cond_1

    :goto_0
    const/4 v4, 0x1

    :cond_1
    if-eqz p7, :cond_2

    invoke-virtual {v0}, L㚬/ℓ/ḓ/㚬/㚬$㺴;->㚬()I

    move-result v1

    move v5, v1

    goto :goto_1

    :cond_2
    const/4 v1, -0x1

    const/4 v5, -0x1

    :goto_1
    invoke-virtual {v0}, L㚬/ℓ/ḓ/㚬/㚬$㺴;->䂻()L㚬/ℓ/ಫ/உ;

    move-result-object v1

    move-object v0, p0

    move-object v2, p5

    move-object v3, p6

    move v6, p4

    invoke-static/range {v0 .. v6}, L㚬/ℓ/ಫ/䂻;->ᆻ(Landroid/content/Context;L㚬/ℓ/ಫ/உ;L㚬/ℓ/ḓ/㚬/䆀$உ;Landroid/os/Handler;ZII)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_2

    :cond_3
    sget-object v1, L㚬/ℓ/䆀/㺴;->உ:L㚬/ℓ/䆀/ಫ;

    move-object v0, p1

    check-cast v0, L㚬/ℓ/ḓ/㚬/㚬$䂻;

    invoke-virtual {v1, p0, v0, p2, p4}, L㚬/ℓ/䆀/ಫ;->䂻(Landroid/content/Context;L㚬/ℓ/ḓ/㚬/㚬$䂻;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz p5, :cond_5

    if-eqz v0, :cond_4

    invoke-virtual {p5, v0, p6}, L㚬/ℓ/ḓ/㚬/䆀$உ;->䂻(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    goto :goto_2

    :cond_4
    const/4 v1, -0x3

    invoke-virtual {p5, v1, p6}, L㚬/ℓ/ḓ/㚬/䆀$உ;->உ(ILandroid/os/Handler;)V

    :cond_5
    :goto_2
    if-eqz v0, :cond_6

    sget-object v1, L㚬/ℓ/䆀/㺴;->䂻:L㚬/䆀/ḓ;

    invoke-static {p2, p3, p4}, L㚬/ℓ/䆀/㺴;->ḓ(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, L㚬/䆀/ḓ;->㺴(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object v0
.end method

.method public static 㺴(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .locals 6

    sget-object v0, L㚬/ℓ/䆀/㺴;->உ:L㚬/ℓ/䆀/ಫ;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, L㚬/ℓ/䆀/ಫ;->ḓ(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p1, p2, p4}, L㚬/ℓ/䆀/㺴;->ḓ(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object p1

    sget-object p2, L㚬/ℓ/䆀/㺴;->䂻:L㚬/䆀/ḓ;

    invoke-virtual {p2, p1, p0}, L㚬/䆀/ḓ;->㺴(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public static 䂻(Landroid/content/Context;Landroid/os/CancellationSignal;[L㚬/ℓ/ಫ/䂻$䆀;I)Landroid/graphics/Typeface;
    .locals 1

    sget-object v0, L㚬/ℓ/䆀/㺴;->உ:L㚬/ℓ/䆀/ಫ;

    invoke-virtual {v0, p0, p1, p2, p3}, L㚬/ℓ/䆀/ಫ;->㚬(Landroid/content/Context;Landroid/os/CancellationSignal;[L㚬/ℓ/ಫ/䂻$䆀;I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public static 䆀(Landroid/content/res/Resources;II)Landroid/graphics/Typeface;
    .locals 1

    sget-object v0, L㚬/ℓ/䆀/㺴;->䂻:L㚬/䆀/ḓ;

    invoke-static {p0, p1, p2}, L㚬/ℓ/䆀/㺴;->ḓ(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, L㚬/䆀/ḓ;->㚬(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Typeface;

    return-object p0
.end method
