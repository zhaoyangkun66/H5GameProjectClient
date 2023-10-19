.class public L㚬/㧦/㺴/㫏;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements L㚬/㞘/㚬;


# instance fields
.field public 㚬:L㚬/㞘/䂻;

.field public 䂻:L㚬/ἥ/ㄏ;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, L㚬/㧦/㺴/㫏;->䂻:L㚬/ἥ/ㄏ;

    iput-object v0, p0, L㚬/㧦/㺴/㫏;->㚬:L㚬/㞘/䂻;

    return-void
.end method


# virtual methods
.method public getLifecycle()L㚬/ἥ/ḓ;
    .locals 1

    invoke-virtual {p0}, L㚬/㧦/㺴/㫏;->䂻()V

    iget-object v0, p0, L㚬/㧦/㺴/㫏;->䂻:L㚬/ἥ/ㄏ;

    return-object v0
.end method

.method public getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;
    .locals 1

    iget-object v0, p0, L㚬/㧦/㺴/㫏;->㚬:L㚬/㞘/䂻;

    invoke-virtual {v0}, L㚬/㞘/䂻;->䂻()Landroidx/savedstate/SavedStateRegistry;

    move-result-object v0

    return-object v0
.end method

.method public உ(L㚬/ἥ/ḓ$䂻;)V
    .locals 1

    iget-object v0, p0, L㚬/㧦/㺴/㫏;->䂻:L㚬/ἥ/ㄏ;

    invoke-virtual {v0, p1}, L㚬/ἥ/ㄏ;->ℓ(L㚬/ἥ/ḓ$䂻;)V

    return-void
.end method

.method public ḓ(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, L㚬/㧦/㺴/㫏;->㚬:L㚬/㞘/䂻;

    invoke-virtual {v0, p1}, L㚬/㞘/䂻;->㺴(Landroid/os/Bundle;)V

    return-void
.end method

.method public 㚬()Z
    .locals 1

    iget-object v0, p0, L㚬/㧦/㺴/㫏;->䂻:L㚬/ἥ/ㄏ;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public 㺴(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, L㚬/㧦/㺴/㫏;->㚬:L㚬/㞘/䂻;

    invoke-virtual {v0, p1}, L㚬/㞘/䂻;->㚬(Landroid/os/Bundle;)V

    return-void
.end method

.method public 䂻()V
    .locals 1

    iget-object v0, p0, L㚬/㧦/㺴/㫏;->䂻:L㚬/ἥ/ㄏ;

    if-nez v0, :cond_0

    new-instance v0, L㚬/ἥ/ㄏ;

    invoke-direct {v0, p0}, L㚬/ἥ/ㄏ;-><init>(L㚬/ἥ/ℓ;)V

    iput-object v0, p0, L㚬/㧦/㺴/㫏;->䂻:L㚬/ἥ/ㄏ;

    invoke-static {p0}, L㚬/㞘/䂻;->உ(L㚬/㞘/㚬;)L㚬/㞘/䂻;

    move-result-object v0

    iput-object v0, p0, L㚬/㧦/㺴/㫏;->㚬:L㚬/㞘/䂻;

    :cond_0
    return-void
.end method

.method public 䆀(L㚬/ἥ/ḓ$㚬;)V
    .locals 1

    iget-object v0, p0, L㚬/㧦/㺴/㫏;->䂻:L㚬/ἥ/ㄏ;

    invoke-virtual {v0, p1}, L㚬/ἥ/ㄏ;->ᓭ(L㚬/ἥ/ḓ$㚬;)V

    return-void
.end method
