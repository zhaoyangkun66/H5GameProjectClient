.class public L㚬/ಫ/䂻/உ$㚬;
.super L㚬/ℓ/ἥ/ᾦ/㺴;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/ಫ/䂻/உ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "\u36ac"
.end annotation


# instance fields
.field public final synthetic 䂻:L㚬/ಫ/䂻/உ;


# direct methods
.method public constructor <init>(L㚬/ಫ/䂻/உ;)V
    .locals 0

    iput-object p1, p0, L㚬/ಫ/䂻/உ$㚬;->䂻:L㚬/ಫ/䂻/உ;

    invoke-direct {p0}, L㚬/ℓ/ἥ/ᾦ/㺴;-><init>()V

    return-void
.end method


# virtual methods
.method public உ(I)L㚬/ℓ/ἥ/ᾦ/㚬;
    .locals 1

    iget-object v0, p0, L㚬/ಫ/䂻/உ$㚬;->䂻:L㚬/ಫ/䂻/உ;

    invoke-virtual {v0, p1}, L㚬/ಫ/䂻/உ;->ᱹ(I)L㚬/ℓ/ἥ/ᾦ/㚬;

    move-result-object p1

    invoke-static {p1}, L㚬/ℓ/ἥ/ᾦ/㚬;->Խ(L㚬/ℓ/ἥ/ᾦ/㚬;)L㚬/ℓ/ἥ/ᾦ/㚬;

    move-result-object p1

    return-object p1
.end method

.method public ḓ(IILandroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, L㚬/ಫ/䂻/உ$㚬;->䂻:L㚬/ಫ/䂻/உ;

    invoke-virtual {v0, p1, p2, p3}, L㚬/ಫ/䂻/உ;->䅚(IILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public 㚬(I)L㚬/ℓ/ἥ/ᾦ/㚬;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, L㚬/ಫ/䂻/உ$㚬;->䂻:L㚬/ಫ/䂻/உ;

    iget p1, p1, L㚬/ಫ/䂻/உ;->㧦:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, L㚬/ಫ/䂻/உ$㚬;->䂻:L㚬/ಫ/䂻/உ;

    iget p1, p1, L㚬/ಫ/䂻/உ;->㹖:I

    :goto_0
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {p0, p1}, L㚬/ಫ/䂻/உ$㚬;->உ(I)L㚬/ℓ/ἥ/ᾦ/㚬;

    move-result-object p1

    return-object p1
.end method
