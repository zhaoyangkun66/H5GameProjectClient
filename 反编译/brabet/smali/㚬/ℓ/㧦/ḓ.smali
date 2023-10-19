.class public final L㚬/ℓ/㧦/ḓ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        L㚬/ℓ/㧦/ḓ$䆀;,
        L㚬/ℓ/㧦/ḓ$உ;,
        L㚬/ℓ/㧦/ḓ$䂻;,
        L㚬/ℓ/㧦/ḓ$㚬;,
        L㚬/ℓ/㧦/ḓ$ḓ;,
        L㚬/ℓ/㧦/ḓ$㺴;
    }
.end annotation


# static fields
.field public static final உ:L㚬/ℓ/㧦/㺴;

.field public static final 㚬:L㚬/ℓ/㧦/㺴;

.field public static final 㺴:L㚬/ℓ/㧦/㺴;

.field public static final 䂻:L㚬/ℓ/㧦/㺴;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, L㚬/ℓ/㧦/ḓ$ḓ;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, L㚬/ℓ/㧦/ḓ$ḓ;-><init>(L㚬/ℓ/㧦/ḓ$㚬;Z)V

    sput-object v0, L㚬/ℓ/㧦/ḓ;->உ:L㚬/ℓ/㧦/㺴;

    new-instance v0, L㚬/ℓ/㧦/ḓ$ḓ;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, L㚬/ℓ/㧦/ḓ$ḓ;-><init>(L㚬/ℓ/㧦/ḓ$㚬;Z)V

    sput-object v0, L㚬/ℓ/㧦/ḓ;->䂻:L㚬/ℓ/㧦/㺴;

    new-instance v0, L㚬/ℓ/㧦/ḓ$ḓ;

    sget-object v1, L㚬/ℓ/㧦/ḓ$䂻;->உ:L㚬/ℓ/㧦/ḓ$䂻;

    invoke-direct {v0, v1, v2}, L㚬/ℓ/㧦/ḓ$ḓ;-><init>(L㚬/ℓ/㧦/ḓ$㚬;Z)V

    sput-object v0, L㚬/ℓ/㧦/ḓ;->㚬:L㚬/ℓ/㧦/㺴;

    new-instance v0, L㚬/ℓ/㧦/ḓ$ḓ;

    invoke-direct {v0, v1, v3}, L㚬/ℓ/㧦/ḓ$ḓ;-><init>(L㚬/ℓ/㧦/ḓ$㚬;Z)V

    sput-object v0, L㚬/ℓ/㧦/ḓ;->㺴:L㚬/ℓ/㧦/㺴;

    sget-object v0, L㚬/ℓ/㧦/ḓ$உ;->䂻:L㚬/ℓ/㧦/ḓ$உ;

    sget-object v0, L㚬/ℓ/㧦/ḓ$䆀;->䂻:L㚬/ℓ/㧦/ḓ$䆀;

    return-void
.end method

.method public static உ(I)I
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method public static 䂻(I)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    return v1

    :cond_0
    :pswitch_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :pswitch_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
