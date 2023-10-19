.class public L㚬/㧦/㺴/ᾦ$㺴;
.super L㚬/㧦/㺴/ᾦ$ḓ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/㧦/㺴/ᾦ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u3eb4"
.end annotation


# instance fields
.field public final ℓ:L㚬/㧦/㺴/ḙ;


# direct methods
.method public constructor <init>(L㚬/㧦/㺴/ᾦ$ḓ$㚬;L㚬/㧦/㺴/ᾦ$ḓ$䂻;L㚬/㧦/㺴/ḙ;L㚬/ℓ/ㄏ/உ;)V
    .locals 1

    invoke-virtual {p3}, L㚬/㧦/㺴/ḙ;->㧦()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p4}, L㚬/㧦/㺴/ᾦ$ḓ;-><init>(L㚬/㧦/㺴/ᾦ$ḓ$㚬;L㚬/㧦/㺴/ᾦ$ḓ$䂻;Landroidx/fragment/app/Fragment;L㚬/ℓ/ㄏ/உ;)V

    iput-object p3, p0, L㚬/㧦/㺴/ᾦ$㺴;->ℓ:L㚬/㧦/㺴/ḙ;

    return-void
.end method


# virtual methods
.method public 㚬()V
    .locals 1

    invoke-super {p0}, L㚬/㧦/㺴/ᾦ$ḓ;->㚬()V

    iget-object v0, p0, L㚬/㧦/㺴/ᾦ$㺴;->ℓ:L㚬/㧦/㺴/ḙ;

    invoke-virtual {v0}, L㚬/㧦/㺴/ḙ;->ἥ()V

    return-void
.end method

.method public 㹖()V
    .locals 4

    iget-object v0, p0, L㚬/㧦/㺴/ᾦ$㺴;->ℓ:L㚬/㧦/㺴/ḙ;

    invoke-virtual {v0}, L㚬/㧦/㺴/ḙ;->㧦()Landroidx/fragment/app/Fragment;

    move-result-object v0

    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setFocusedView(Landroid/view/View;)V

    const/4 v2, 0x2

    invoke-static {v2}, L㚬/㧦/㺴/ἥ;->ፖ(I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestFocus: Saved focused view "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for Fragment "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FragmentManager"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, L㚬/㧦/㺴/ᾦ$ḓ;->ᆻ()L㚬/㧦/㺴/ᾦ$ḓ$䂻;

    move-result-object v1

    sget-object v2, L㚬/㧦/㺴/ᾦ$ḓ$䂻;->㚬:L㚬/㧦/㺴/ᾦ$ḓ$䂻;

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, L㚬/㧦/㺴/ᾦ$ḓ;->䆀()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iget-object v2, p0, L㚬/㧦/㺴/ᾦ$㺴;->ℓ:L㚬/㧦/㺴/ḙ;

    invoke-virtual {v2}, L㚬/㧦/㺴/ḙ;->䂻()V

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getPostOnViewCreatedAlpha()F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    return-void
.end method
