.class public L㚬/ἥ/ㄏ$உ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/ἥ/ㄏ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u0b89"
.end annotation


# instance fields
.field public உ:L㚬/ἥ/ḓ$㚬;

.field public 䂻:L㚬/ἥ/䆀;


# direct methods
.method public constructor <init>(L㚬/ἥ/ᆻ;L㚬/ἥ/ḓ$㚬;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, L㚬/ἥ/㧦;->䆀(Ljava/lang/Object;)L㚬/ἥ/䆀;

    move-result-object p1

    iput-object p1, p0, L㚬/ἥ/ㄏ$உ;->䂻:L㚬/ἥ/䆀;

    iput-object p2, p0, L㚬/ἥ/ㄏ$உ;->உ:L㚬/ἥ/ḓ$㚬;

    return-void
.end method


# virtual methods
.method public உ(L㚬/ἥ/ℓ;L㚬/ἥ/ḓ$䂻;)V
    .locals 2

    invoke-virtual {p2}, L㚬/ἥ/ḓ$䂻;->䂻()L㚬/ἥ/ḓ$㚬;

    move-result-object v0

    iget-object v1, p0, L㚬/ἥ/ㄏ$உ;->உ:L㚬/ἥ/ḓ$㚬;

    invoke-static {v1, v0}, L㚬/ἥ/ㄏ;->㧦(L㚬/ἥ/ḓ$㚬;L㚬/ἥ/ḓ$㚬;)L㚬/ἥ/ḓ$㚬;

    move-result-object v1

    iput-object v1, p0, L㚬/ἥ/ㄏ$உ;->உ:L㚬/ἥ/ḓ$㚬;

    iget-object v1, p0, L㚬/ἥ/ㄏ$உ;->䂻:L㚬/ἥ/䆀;

    invoke-interface {v1, p1, p2}, L㚬/ἥ/䆀;->㺴(L㚬/ἥ/ℓ;L㚬/ἥ/ḓ$䂻;)V

    iput-object v0, p0, L㚬/ἥ/ㄏ$உ;->உ:L㚬/ἥ/ḓ$㚬;

    return-void
.end method
