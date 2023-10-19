.class public L㚬/䂻/㧦/ಫ$உ;
.super L㚬/ℓ/ἥ/ㄬ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/䂻/㧦/ಫ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic உ:L㚬/䂻/㧦/ಫ;


# direct methods
.method public constructor <init>(L㚬/䂻/㧦/ಫ;)V
    .locals 0

    iput-object p1, p0, L㚬/䂻/㧦/ಫ$உ;->உ:L㚬/䂻/㧦/ಫ;

    invoke-direct {p0}, L㚬/ℓ/ἥ/ㄬ;-><init>()V

    return-void
.end method


# virtual methods
.method public உ(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, L㚬/䂻/㧦/ಫ$உ;->உ:L㚬/䂻/㧦/ಫ;

    iget-boolean v0, p1, L㚬/䂻/㧦/ಫ;->㲝:Z

    if-eqz v0, :cond_0

    iget-object p1, p1, L㚬/䂻/㧦/ಫ;->ᆻ:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, L㚬/䂻/㧦/ಫ$உ;->உ:L㚬/䂻/㧦/ಫ;

    iget-object p1, p1, L㚬/䂻/㧦/ಫ;->㺴:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :cond_0
    iget-object p1, p0, L㚬/䂻/㧦/ಫ$உ;->உ:L㚬/䂻/㧦/ಫ;

    iget-object p1, p1, L㚬/䂻/㧦/ಫ;->㺴:Landroidx/appcompat/widget/ActionBarContainer;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    iget-object p1, p0, L㚬/䂻/㧦/ಫ$உ;->உ:L㚬/䂻/㧦/ಫ;

    iget-object p1, p1, L㚬/䂻/㧦/ಫ;->㺴:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    iget-object p1, p0, L㚬/䂻/㧦/ಫ$உ;->உ:L㚬/䂻/㧦/ಫ;

    const/4 v0, 0x0

    iput-object v0, p1, L㚬/䂻/㧦/ಫ;->㢏:L㚬/䂻/ᓭ/ℓ;

    invoke-virtual {p1}, L㚬/䂻/㧦/ಫ;->㲧()V

    iget-object p1, p0, L㚬/䂻/㧦/ಫ$உ;->உ:L㚬/䂻/㧦/ಫ;

    iget-object p1, p1, L㚬/䂻/㧦/ಫ;->㚬:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz p1, :cond_1

    invoke-static {p1}, L㚬/ℓ/ἥ/㭲;->㽛(Landroid/view/View;)V

    :cond_1
    return-void
.end method
