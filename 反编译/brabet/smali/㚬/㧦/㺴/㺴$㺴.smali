.class public L㚬/㧦/㺴/㺴$㺴;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements L㚬/ἥ/ཇ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/㧦/㺴/㺴;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "L\u36ac/\u1f25/\u0f47<",
        "L\u36ac/\u1f25/\u2113;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic உ:L㚬/㧦/㺴/㺴;


# direct methods
.method public constructor <init>(L㚬/㧦/㺴/㺴;)V
    .locals 0

    iput-object p1, p0, L㚬/㧦/㺴/㺴$㺴;->உ:L㚬/㧦/㺴/㺴;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic உ(Ljava/lang/Object;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation

    check-cast p1, L㚬/ἥ/ℓ;

    invoke-virtual {p0, p1}, L㚬/㧦/㺴/㺴$㺴;->䂻(L㚬/ἥ/ℓ;)V

    return-void
.end method

.method public 䂻(L㚬/ἥ/ℓ;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation

    if-eqz p1, :cond_2

    iget-object p1, p0, L㚬/㧦/㺴/㺴$㺴;->உ:L㚬/㧦/㺴/㺴;

    invoke-static {p1}, L㚬/㧦/㺴/㺴;->access$200(L㚬/㧦/㺴/㺴;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, L㚬/㧦/㺴/㺴$㺴;->உ:L㚬/㧦/㺴/㺴;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, L㚬/㧦/㺴/㺴$㺴;->உ:L㚬/㧦/㺴/㺴;

    invoke-static {v0}, L㚬/㧦/㺴/㺴;->access$000(L㚬/㧦/㺴/㺴;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-static {v0}, L㚬/㧦/㺴/ἥ;->ፖ(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DialogFragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " setting the content view on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, L㚬/㧦/㺴/㺴$㺴;->உ:L㚬/㧦/㺴/㺴;

    invoke-static {v1}, L㚬/㧦/㺴/㺴;->access$000(L㚬/㧦/㺴/㺴;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, L㚬/㧦/㺴/㺴$㺴;->உ:L㚬/㧦/㺴/㺴;

    invoke-static {v0}, L㚬/㧦/㺴/㺴;->access$000(L㚬/㧦/㺴/㺴;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "DialogFragment can not be attached to a container view"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method
