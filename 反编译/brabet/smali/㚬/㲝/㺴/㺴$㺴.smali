.class public L㚬/㲝/㺴/㺴$㺴;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/㲝/㺴/㺴;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "\u3eb4"
.end annotation


# instance fields
.field public final synthetic உ:L㚬/㲝/㺴/㺴;


# direct methods
.method public constructor <init>(L㚬/㲝/㺴/㺴;)V
    .locals 0

    iput-object p1, p0, L㚬/㲝/㺴/㺴$㺴;->உ:L㚬/㲝/㺴/㺴;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    iget-object v0, p0, L㚬/㲝/㺴/㺴$㺴;->உ:L㚬/㲝/㺴/㺴;

    iget-object v0, v0, L㚬/㲝/㺴/㺴;->㚬:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->setAlpha(I)V

    iget-object v0, p0, L㚬/㲝/㺴/㺴$㺴;->உ:L㚬/㲝/㺴/㺴;

    iget-object v0, v0, L㚬/㲝/㺴/㺴;->㺴:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p1, p0, L㚬/㲝/㺴/㺴$㺴;->உ:L㚬/㲝/㺴/㺴;

    invoke-virtual {p1}, L㚬/㲝/㺴/㺴;->㢏()V

    return-void
.end method
