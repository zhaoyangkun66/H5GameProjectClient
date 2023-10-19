.class public final L㚬/ℓ/ἥ/ಋ$உ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/ℓ/ἥ/ಋ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "\u0b89"
.end annotation


# instance fields
.field public final உ:L㚬/ℓ/ἥ/ಋ$㺴;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    new-instance v0, L㚬/ℓ/ἥ/ಋ$㚬;

    invoke-direct {v0}, L㚬/ℓ/ἥ/ಋ$㚬;-><init>()V

    :goto_0
    iput-object v0, p0, L㚬/ℓ/ἥ/ಋ$உ;->உ:L㚬/ℓ/ἥ/ಋ$㺴;

    goto :goto_1

    :cond_0
    const/16 v1, 0x14

    if-lt v0, v1, :cond_1

    new-instance v0, L㚬/ℓ/ἥ/ಋ$䂻;

    invoke-direct {v0}, L㚬/ℓ/ἥ/ಋ$䂻;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v0, L㚬/ℓ/ἥ/ಋ$㺴;

    invoke-direct {v0}, L㚬/ℓ/ἥ/ಋ$㺴;-><init>()V

    goto :goto_0

    :goto_1
    return-void
.end method

.method public constructor <init>(L㚬/ℓ/ἥ/ಋ;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    new-instance v0, L㚬/ℓ/ἥ/ಋ$㚬;

    invoke-direct {v0, p1}, L㚬/ℓ/ἥ/ಋ$㚬;-><init>(L㚬/ℓ/ἥ/ಋ;)V

    :goto_0
    iput-object v0, p0, L㚬/ℓ/ἥ/ಋ$உ;->உ:L㚬/ℓ/ἥ/ಋ$㺴;

    goto :goto_1

    :cond_0
    const/16 v1, 0x14

    if-lt v0, v1, :cond_1

    new-instance v0, L㚬/ℓ/ἥ/ಋ$䂻;

    invoke-direct {v0, p1}, L㚬/ℓ/ἥ/ಋ$䂻;-><init>(L㚬/ℓ/ἥ/ಋ;)V

    goto :goto_0

    :cond_1
    new-instance v0, L㚬/ℓ/ἥ/ಋ$㺴;

    invoke-direct {v0, p1}, L㚬/ℓ/ἥ/ಋ$㺴;-><init>(L㚬/ℓ/ἥ/ಋ;)V

    goto :goto_0

    :goto_1
    return-void
.end method


# virtual methods
.method public உ()L㚬/ℓ/ἥ/ಋ;
    .locals 1

    iget-object v0, p0, L㚬/ℓ/ἥ/ಋ$உ;->உ:L㚬/ℓ/ἥ/ಋ$㺴;

    invoke-virtual {v0}, L㚬/ℓ/ἥ/ಋ$㺴;->உ()L㚬/ℓ/ἥ/ಋ;

    move-result-object v0

    return-object v0
.end method

.method public 䂻(L㚬/ℓ/䆀/䂻;)L㚬/ℓ/ἥ/ಋ$உ;
    .locals 1

    iget-object v0, p0, L㚬/ℓ/ἥ/ಋ$உ;->உ:L㚬/ℓ/ἥ/ಋ$㺴;

    invoke-virtual {v0, p1}, L㚬/ℓ/ἥ/ಋ$㺴;->䂻(L㚬/ℓ/䆀/䂻;)V

    return-object p0
.end method
