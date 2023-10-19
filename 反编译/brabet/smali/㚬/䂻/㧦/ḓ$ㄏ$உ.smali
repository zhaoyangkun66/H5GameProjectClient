.class public L㚬/䂻/㧦/ḓ$ㄏ$உ;
.super L㚬/ℓ/ἥ/ㄬ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L㚬/䂻/㧦/ḓ$ㄏ;->㺴(L㚬/䂻/ᓭ/䂻;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic உ:L㚬/䂻/㧦/ḓ$ㄏ;


# direct methods
.method public constructor <init>(L㚬/䂻/㧦/ḓ$ㄏ;)V
    .locals 0

    iput-object p1, p0, L㚬/䂻/㧦/ḓ$ㄏ$உ;->உ:L㚬/䂻/㧦/ḓ$ㄏ;

    invoke-direct {p0}, L㚬/ℓ/ἥ/ㄬ;-><init>()V

    return-void
.end method


# virtual methods
.method public உ(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, L㚬/䂻/㧦/ḓ$ㄏ$உ;->உ:L㚬/䂻/㧦/ḓ$ㄏ;

    iget-object p1, p1, L㚬/䂻/㧦/ḓ$ㄏ;->䂻:L㚬/䂻/㧦/ḓ;

    iget-object p1, p1, L㚬/䂻/㧦/ḓ;->㲝:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    iget-object p1, p0, L㚬/䂻/㧦/ḓ$ㄏ$உ;->உ:L㚬/䂻/㧦/ḓ$ㄏ;

    iget-object p1, p1, L㚬/䂻/㧦/ḓ$ㄏ;->䂻:L㚬/䂻/㧦/ḓ;

    iget-object v0, p1, L㚬/䂻/㧦/ḓ;->㞘:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    :cond_0
    iget-object p1, p1, L㚬/䂻/㧦/ḓ;->㲝:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object p1, p0, L㚬/䂻/㧦/ḓ$ㄏ$உ;->உ:L㚬/䂻/㧦/ḓ$ㄏ;

    iget-object p1, p1, L㚬/䂻/㧦/ḓ$ㄏ;->䂻:L㚬/䂻/㧦/ḓ;

    iget-object p1, p1, L㚬/䂻/㧦/ḓ;->㲝:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, L㚬/ℓ/ἥ/㭲;->㽛(Landroid/view/View;)V

    :cond_1
    :goto_0
    iget-object p1, p0, L㚬/䂻/㧦/ḓ$ㄏ$உ;->உ:L㚬/䂻/㧦/ḓ$ㄏ;

    iget-object p1, p1, L㚬/䂻/㧦/ḓ$ㄏ;->䂻:L㚬/䂻/㧦/ḓ;

    iget-object p1, p1, L㚬/䂻/㧦/ḓ;->㲝:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p1, p0, L㚬/䂻/㧦/ḓ$ㄏ$உ;->உ:L㚬/䂻/㧦/ḓ$ㄏ;

    iget-object p1, p1, L㚬/䂻/㧦/ḓ$ㄏ;->䂻:L㚬/䂻/㧦/ḓ;

    iget-object p1, p1, L㚬/䂻/㧦/ḓ;->ḙ:L㚬/ℓ/ἥ/ม;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, L㚬/ℓ/ἥ/ม;->䆀(L㚬/ℓ/ἥ/㲧;)L㚬/ℓ/ἥ/ม;

    iget-object p1, p0, L㚬/䂻/㧦/ḓ$ㄏ$உ;->உ:L㚬/䂻/㧦/ḓ$ㄏ;

    iget-object p1, p1, L㚬/䂻/㧦/ḓ$ㄏ;->䂻:L㚬/䂻/㧦/ḓ;

    iput-object v0, p1, L㚬/䂻/㧦/ḓ;->ḙ:L㚬/ℓ/ἥ/ม;

    return-void
.end method
