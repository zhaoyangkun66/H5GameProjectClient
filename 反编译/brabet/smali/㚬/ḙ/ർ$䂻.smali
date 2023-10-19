.class public L㚬/ḙ/ർ$䂻;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""

# interfaces
.implements L㚬/ḙ/ἥ$䆀;
.implements L㚬/ḙ/உ$உ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/ḙ/ർ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u40bb"
.end annotation


# instance fields
.field public final உ:Landroid/view/View;

.field public ḓ:Z

.field public final 㚬:Landroid/view/ViewGroup;

.field public final 㺴:Z

.field public final 䂻:I

.field public 䆀:Z


# direct methods
.method public constructor <init>(Landroid/view/View;IZ)V
    .locals 1

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, L㚬/ḙ/ർ$䂻;->䆀:Z

    iput-object p1, p0, L㚬/ḙ/ർ$䂻;->உ:Landroid/view/View;

    iput p2, p0, L㚬/ḙ/ർ$䂻;->䂻:I

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, L㚬/ḙ/ർ$䂻;->㚬:Landroid/view/ViewGroup;

    iput-boolean p3, p0, L㚬/ḙ/ർ$䂻;->㺴:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, L㚬/ḙ/ർ$䂻;->ᆻ(Z)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, L㚬/ḙ/ർ$䂻;->䆀:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    invoke-virtual {p0}, L㚬/ḙ/ർ$䂻;->䆀()V

    return-void
.end method

.method public onAnimationPause(Landroid/animation/Animator;)V
    .locals 1

    iget-boolean p1, p0, L㚬/ḙ/ർ$䂻;->䆀:Z

    if-nez p1, :cond_0

    iget-object p1, p0, L㚬/ḙ/ർ$䂻;->உ:Landroid/view/View;

    iget v0, p0, L㚬/ḙ/ർ$䂻;->䂻:I

    invoke-static {p1, v0}, L㚬/ḙ/ڈ;->ℓ(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationResume(Landroid/animation/Animator;)V
    .locals 1

    iget-boolean p1, p0, L㚬/ḙ/ർ$䂻;->䆀:Z

    if-nez p1, :cond_0

    iget-object p1, p0, L㚬/ḙ/ർ$䂻;->உ:Landroid/view/View;

    const/4 v0, 0x0

    invoke-static {p1, v0}, L㚬/ḙ/ڈ;->ℓ(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public உ(L㚬/ḙ/ἥ;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, L㚬/ḙ/ർ$䂻;->ᆻ(Z)V

    return-void
.end method

.method public final ᆻ(Z)V
    .locals 1

    iget-boolean v0, p0, L㚬/ḙ/ർ$䂻;->㺴:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, L㚬/ḙ/ർ$䂻;->ḓ:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, L㚬/ḙ/ർ$䂻;->㚬:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iput-boolean p1, p0, L㚬/ḙ/ർ$䂻;->ḓ:Z

    invoke-static {v0, p1}, L㚬/ḙ/㲧;->㚬(Landroid/view/ViewGroup;Z)V

    :cond_0
    return-void
.end method

.method public ḓ(L㚬/ḙ/ἥ;)V
    .locals 0

    invoke-virtual {p0}, L㚬/ḙ/ർ$䂻;->䆀()V

    invoke-virtual {p1, p0}, L㚬/ḙ/ἥ;->䅚(L㚬/ḙ/ἥ$䆀;)L㚬/ḙ/ἥ;

    return-void
.end method

.method public 㚬(L㚬/ḙ/ἥ;)V
    .locals 0

    return-void
.end method

.method public 㺴(L㚬/ḙ/ἥ;)V
    .locals 0

    return-void
.end method

.method public 䂻(L㚬/ḙ/ἥ;)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, L㚬/ḙ/ർ$䂻;->ᆻ(Z)V

    return-void
.end method

.method public final 䆀()V
    .locals 2

    iget-boolean v0, p0, L㚬/ḙ/ർ$䂻;->䆀:Z

    if-nez v0, :cond_0

    iget-object v0, p0, L㚬/ḙ/ർ$䂻;->உ:Landroid/view/View;

    iget v1, p0, L㚬/ḙ/ർ$䂻;->䂻:I

    invoke-static {v0, v1}, L㚬/ḙ/ڈ;->ℓ(Landroid/view/View;I)V

    iget-object v0, p0, L㚬/ḙ/ർ$䂻;->㚬:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, L㚬/ḙ/ർ$䂻;->ᆻ(Z)V

    return-void
.end method
