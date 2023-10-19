.class public L㚬/㲝/㺴/㺴$㚬;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/㲝/㺴/㺴;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "\u36ac"
.end annotation


# instance fields
.field public உ:Z

.field public final synthetic 䂻:L㚬/㲝/㺴/㺴;


# direct methods
.method public constructor <init>(L㚬/㲝/㺴/㺴;)V
    .locals 0

    iput-object p1, p0, L㚬/㲝/㺴/㺴$㚬;->䂻:L㚬/㲝/㺴/㺴;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, L㚬/㲝/㺴/㺴$㚬;->உ:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, L㚬/㲝/㺴/㺴$㚬;->உ:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-boolean p1, p0, L㚬/㲝/㺴/㺴$㚬;->உ:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iput-boolean v0, p0, L㚬/㲝/㺴/㺴$㚬;->உ:Z

    return-void

    :cond_0
    iget-object p1, p0, L㚬/㲝/㺴/㺴$㚬;->䂻:L㚬/㲝/㺴/㺴;

    iget-object p1, p1, L㚬/㲝/㺴/㺴;->㫏:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-nez p1, :cond_1

    iget-object p1, p0, L㚬/㲝/㺴/㺴$㚬;->䂻:L㚬/㲝/㺴/㺴;

    iput v0, p1, L㚬/㲝/㺴/㺴;->ಋ:I

    invoke-virtual {p1, v0}, L㚬/㲝/㺴/㺴;->ㄬ(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, L㚬/㲝/㺴/㺴$㚬;->䂻:L㚬/㲝/㺴/㺴;

    const/4 v0, 0x2

    iput v0, p1, L㚬/㲝/㺴/㺴;->ಋ:I

    invoke-virtual {p1}, L㚬/㲝/㺴/㺴;->㢏()V

    :goto_0
    return-void
.end method
