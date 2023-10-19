.class public L㚬/ḙ/㺴$䂻;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/ḙ/㺴;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u40bb"
.end annotation


# instance fields
.field public final உ:Landroid/view/View;

.field public 䂻:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, L㚬/ḙ/㺴$䂻;->䂻:Z

    iput-object p1, p0, L㚬/ḙ/㺴$䂻;->உ:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, L㚬/ḙ/㺴$䂻;->உ:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, L㚬/ḙ/ڈ;->ᆻ(Landroid/view/View;F)V

    iget-boolean p1, p0, L㚬/ḙ/㺴$䂻;->䂻:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, L㚬/ḙ/㺴$䂻;->உ:Landroid/view/View;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, L㚬/ḙ/㺴$䂻;->உ:Landroid/view/View;

    invoke-static {p1}, L㚬/ℓ/ἥ/㭲;->ᰘ(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, L㚬/ḙ/㺴$䂻;->உ:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, L㚬/ḙ/㺴$䂻;->䂻:Z

    iget-object p1, p0, L㚬/ḙ/㺴$䂻;->உ:Landroid/view/View;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method
