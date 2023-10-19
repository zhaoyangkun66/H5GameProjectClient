.class public L㚬/䂻/㧦/ḓ$ᆻ;
.super L㚬/ℓ/ἥ/ㄬ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L㚬/䂻/㧦/ḓ;->ᴇ(L㚬/䂻/ᓭ/䂻$உ;)L㚬/䂻/ᓭ/䂻;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic உ:L㚬/䂻/㧦/ḓ;


# direct methods
.method public constructor <init>(L㚬/䂻/㧦/ḓ;)V
    .locals 0

    iput-object p1, p0, L㚬/䂻/㧦/ḓ$ᆻ;->உ:L㚬/䂻/㧦/ḓ;

    invoke-direct {p0}, L㚬/ℓ/ἥ/ㄬ;-><init>()V

    return-void
.end method


# virtual methods
.method public உ(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, L㚬/䂻/㧦/ḓ$ᆻ;->உ:L㚬/䂻/㧦/ḓ;

    iget-object p1, p1, L㚬/䂻/㧦/ḓ;->㲝:Landroidx/appcompat/widget/ActionBarContextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object p1, p0, L㚬/䂻/㧦/ḓ$ᆻ;->உ:L㚬/䂻/㧦/ḓ;

    iget-object p1, p1, L㚬/䂻/㧦/ḓ;->ḙ:L㚬/ℓ/ἥ/ม;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, L㚬/ℓ/ἥ/ม;->䆀(L㚬/ℓ/ἥ/㲧;)L㚬/ℓ/ἥ/ม;

    iget-object p1, p0, L㚬/䂻/㧦/ḓ$ᆻ;->உ:L㚬/䂻/㧦/ḓ;

    iput-object v0, p1, L㚬/䂻/㧦/ḓ;->ḙ:L㚬/ℓ/ἥ/ม;

    return-void
.end method

.method public 䂻(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, L㚬/䂻/㧦/ḓ$ᆻ;->உ:L㚬/䂻/㧦/ḓ;

    iget-object p1, p1, L㚬/䂻/㧦/ḓ;->㲝:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    iget-object p1, p0, L㚬/䂻/㧦/ḓ$ᆻ;->உ:L㚬/䂻/㧦/ḓ;

    iget-object p1, p1, L㚬/䂻/㧦/ḓ;->㲝:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    iget-object p1, p0, L㚬/䂻/㧦/ḓ$ᆻ;->உ:L㚬/䂻/㧦/ḓ;

    iget-object p1, p1, L㚬/䂻/㧦/ḓ;->㲝:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_0

    iget-object p1, p0, L㚬/䂻/㧦/ḓ$ᆻ;->உ:L㚬/䂻/㧦/ḓ;

    iget-object p1, p1, L㚬/䂻/㧦/ḓ;->㲝:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, L㚬/ℓ/ἥ/㭲;->㽛(Landroid/view/View;)V

    :cond_0
    return-void
.end method
