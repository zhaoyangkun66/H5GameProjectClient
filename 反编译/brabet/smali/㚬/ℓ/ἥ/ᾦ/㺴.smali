.class public L㚬/ℓ/ἥ/ᾦ/㺴;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        L㚬/ℓ/ἥ/ᾦ/㺴$䂻;,
        L㚬/ℓ/ἥ/ᾦ/㺴$உ;
    }
.end annotation


# instance fields
.field public final உ:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    new-instance v0, L㚬/ℓ/ἥ/ᾦ/㺴$䂻;

    invoke-direct {v0, p0}, L㚬/ℓ/ἥ/ᾦ/㺴$䂻;-><init>(L㚬/ℓ/ἥ/ᾦ/㺴;)V

    :goto_0
    iput-object v0, p0, L㚬/ℓ/ἥ/ᾦ/㺴;->உ:Ljava/lang/Object;

    goto :goto_1

    :cond_0
    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    new-instance v0, L㚬/ℓ/ἥ/ᾦ/㺴$உ;

    invoke-direct {v0, p0}, L㚬/ℓ/ἥ/ᾦ/㺴$உ;-><init>(L㚬/ℓ/ἥ/ᾦ/㺴;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㚬/ℓ/ἥ/ᾦ/㺴;->உ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public உ(I)L㚬/ℓ/ἥ/ᾦ/㚬;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public ḓ(IILandroid/os/Bundle;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public 㚬(I)L㚬/ℓ/ἥ/ᾦ/㚬;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public 㺴()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, L㚬/ℓ/ἥ/ᾦ/㺴;->உ:Ljava/lang/Object;

    return-object v0
.end method

.method public 䂻(Ljava/lang/String;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "L\u36ac/\u2113/\u1f25/\u1fa6/\u36ac;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method
