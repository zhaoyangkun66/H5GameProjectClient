.class public L㚬/䂻/㧦/ḓ$ㄏ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements L㚬/䂻/ᓭ/䂻$உ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/䂻/㧦/ḓ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "\u310f"
.end annotation


# instance fields
.field public உ:L㚬/䂻/ᓭ/䂻$உ;

.field public final synthetic 䂻:L㚬/䂻/㧦/ḓ;


# direct methods
.method public constructor <init>(L㚬/䂻/㧦/ḓ;L㚬/䂻/ᓭ/䂻$உ;)V
    .locals 0

    iput-object p1, p0, L㚬/䂻/㧦/ḓ$ㄏ;->䂻:L㚬/䂻/㧦/ḓ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, L㚬/䂻/㧦/ḓ$ㄏ;->உ:L㚬/䂻/ᓭ/䂻$உ;

    return-void
.end method


# virtual methods
.method public உ(L㚬/䂻/ᓭ/䂻;Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, L㚬/䂻/㧦/ḓ$ㄏ;->உ:L㚬/䂻/ᓭ/䂻$உ;

    invoke-interface {v0, p1, p2}, L㚬/䂻/ᓭ/䂻$உ;->உ(L㚬/䂻/ᓭ/䂻;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public 㚬(L㚬/䂻/ᓭ/䂻;Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, L㚬/䂻/㧦/ḓ$ㄏ;->உ:L㚬/䂻/ᓭ/䂻$உ;

    invoke-interface {v0, p1, p2}, L㚬/䂻/ᓭ/䂻$உ;->㚬(L㚬/䂻/ᓭ/䂻;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public 㺴(L㚬/䂻/ᓭ/䂻;)V
    .locals 2

    iget-object v0, p0, L㚬/䂻/㧦/ḓ$ㄏ;->உ:L㚬/䂻/ᓭ/䂻$உ;

    invoke-interface {v0, p1}, L㚬/䂻/ᓭ/䂻$உ;->㺴(L㚬/䂻/ᓭ/䂻;)V

    iget-object p1, p0, L㚬/䂻/㧦/ḓ$ㄏ;->䂻:L㚬/䂻/㧦/ḓ;

    iget-object v0, p1, L㚬/䂻/㧦/ḓ;->㞘:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object p1, p1, L㚬/䂻/㧦/ḓ;->ᆻ:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, L㚬/䂻/㧦/ḓ$ㄏ;->䂻:L㚬/䂻/㧦/ḓ;

    iget-object v0, v0, L㚬/䂻/㧦/ḓ;->㭲:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object p1, p0, L㚬/䂻/㧦/ḓ$ㄏ;->䂻:L㚬/䂻/㧦/ḓ;

    iget-object v0, p1, L㚬/䂻/㧦/ḓ;->㲝:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, L㚬/䂻/㧦/ḓ;->ᭊ()V

    iget-object p1, p0, L㚬/䂻/㧦/ḓ$ㄏ;->䂻:L㚬/䂻/㧦/ḓ;

    iget-object v0, p1, L㚬/䂻/㧦/ḓ;->㲝:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v0}, L㚬/ℓ/ἥ/㭲;->㚬(Landroid/view/View;)L㚬/ℓ/ἥ/ม;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, L㚬/ℓ/ἥ/ม;->உ(F)L㚬/ℓ/ἥ/ม;

    iput-object v0, p1, L㚬/䂻/㧦/ḓ;->ḙ:L㚬/ℓ/ἥ/ม;

    iget-object p1, p0, L㚬/䂻/㧦/ḓ$ㄏ;->䂻:L㚬/䂻/㧦/ḓ;

    iget-object p1, p1, L㚬/䂻/㧦/ḓ;->ḙ:L㚬/ℓ/ἥ/ม;

    new-instance v0, L㚬/䂻/㧦/ḓ$ㄏ$உ;

    invoke-direct {v0, p0}, L㚬/䂻/㧦/ḓ$ㄏ$உ;-><init>(L㚬/䂻/㧦/ḓ$ㄏ;)V

    invoke-virtual {p1, v0}, L㚬/ℓ/ἥ/ม;->䆀(L㚬/ℓ/ἥ/㲧;)L㚬/ℓ/ἥ/ม;

    :cond_1
    iget-object p1, p0, L㚬/䂻/㧦/ḓ$ㄏ;->䂻:L㚬/䂻/㧦/ḓ;

    iget-object v0, p1, L㚬/䂻/㧦/ḓ;->ㄏ:L㚬/䂻/㧦/㚬;

    if-eqz v0, :cond_2

    iget-object p1, p1, L㚬/䂻/㧦/ḓ;->ბ:L㚬/䂻/ᓭ/䂻;

    invoke-interface {v0, p1}, L㚬/䂻/㧦/㚬;->㚬(L㚬/䂻/ᓭ/䂻;)V

    :cond_2
    iget-object p1, p0, L㚬/䂻/㧦/ḓ$ㄏ;->䂻:L㚬/䂻/㧦/ḓ;

    const/4 v0, 0x0

    iput-object v0, p1, L㚬/䂻/㧦/ḓ;->ბ:L㚬/䂻/ᓭ/䂻;

    return-void
.end method

.method public 䂻(L㚬/䂻/ᓭ/䂻;Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, L㚬/䂻/㧦/ḓ$ㄏ;->உ:L㚬/䂻/ᓭ/䂻$உ;

    invoke-interface {v0, p1, p2}, L㚬/䂻/ᓭ/䂻$உ;->䂻(L㚬/䂻/ᓭ/䂻;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
