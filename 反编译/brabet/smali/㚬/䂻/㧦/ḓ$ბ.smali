.class public final L㚬/䂻/㧦/ḓ$ბ;
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
    name = "\u10d1"
.end annotation


# instance fields
.field public final synthetic 䂻:L㚬/䂻/㧦/ḓ;


# direct methods
.method public constructor <init>(L㚬/䂻/㧦/ḓ;)V
    .locals 0

    iput-object p1, p0, L㚬/䂻/㧦/ḓ$ბ;->䂻:L㚬/䂻/㧦/ḓ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public உ(L㚬/䂻/ᓭ/ಫ/ᆻ;Z)V
    .locals 4

    invoke-virtual {p1}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㰫()L㚬/䂻/ᓭ/ಫ/ᆻ;

    move-result-object v0

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, L㚬/䂻/㧦/ḓ$ბ;->䂻:L㚬/䂻/㧦/ḓ;

    if-eqz v2, :cond_1

    move-object p1, v0

    :cond_1
    invoke-virtual {v3, p1}, L㚬/䂻/㧦/ḓ;->ᇿ(Landroid/view/Menu;)L㚬/䂻/㧦/ḓ$ᓭ;

    move-result-object p1

    if-eqz p1, :cond_3

    if-eqz v2, :cond_2

    iget-object p2, p0, L㚬/䂻/㧦/ḓ$ბ;->䂻:L㚬/䂻/㧦/ḓ;

    iget v2, p1, L㚬/䂻/㧦/ḓ$ᓭ;->உ:I

    invoke-virtual {p2, v2, p1, v0}, L㚬/䂻/㧦/ḓ;->ർ(IL㚬/䂻/㧦/ḓ$ᓭ;Landroid/view/Menu;)V

    iget-object p2, p0, L㚬/䂻/㧦/ḓ$ბ;->䂻:L㚬/䂻/㧦/ḓ;

    invoke-virtual {p2, p1, v1}, L㚬/䂻/㧦/ḓ;->Ԁ(L㚬/䂻/㧦/ḓ$ᓭ;Z)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, L㚬/䂻/㧦/ḓ$ბ;->䂻:L㚬/䂻/㧦/ḓ;

    invoke-virtual {v0, p1, p2}, L㚬/䂻/㧦/ḓ;->Ԁ(L㚬/䂻/㧦/ḓ$ᓭ;Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public 䂻(L㚬/䂻/ᓭ/ಫ/ᆻ;)Z
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, L㚬/䂻/㧦/ḓ$ბ;->䂻:L㚬/䂻/㧦/ḓ;

    iget-boolean v1, v0, L㚬/䂻/㧦/ḓ;->ᾦ:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, L㚬/䂻/㧦/ḓ;->ಇ()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, L㚬/䂻/㧦/ḓ$ბ;->䂻:L㚬/䂻/㧦/ḓ;

    iget-boolean v1, v1, L㚬/䂻/㧦/ḓ;->Ԁ:Z

    if-nez v1, :cond_0

    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
