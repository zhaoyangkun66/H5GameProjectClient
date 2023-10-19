.class public final L㚬/䂻/㧦/ḓ$ℓ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements L㚬/䂻/ᓭ/ಫ/ἥ$உ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/䂻/㧦/ḓ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "\u2113"
.end annotation


# instance fields
.field public final synthetic 䂻:L㚬/䂻/㧦/ḓ;


# direct methods
.method public constructor <init>(L㚬/䂻/㧦/ḓ;)V
    .locals 0

    iput-object p1, p0, L㚬/䂻/㧦/ḓ$ℓ;->䂻:L㚬/䂻/㧦/ḓ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public உ(L㚬/䂻/ᓭ/ಫ/ᆻ;Z)V
    .locals 0

    iget-object p2, p0, L㚬/䂻/㧦/ḓ$ℓ;->䂻:L㚬/䂻/㧦/ḓ;

    invoke-virtual {p2, p1}, L㚬/䂻/㧦/ḓ;->㖆(L㚬/䂻/ᓭ/ಫ/ᆻ;)V

    return-void
.end method

.method public 䂻(L㚬/䂻/ᓭ/ಫ/ᆻ;)Z
    .locals 2

    iget-object v0, p0, L㚬/䂻/㧦/ḓ$ℓ;->䂻:L㚬/䂻/㧦/ḓ;

    invoke-virtual {v0}, L㚬/䂻/㧦/ḓ;->ಇ()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
