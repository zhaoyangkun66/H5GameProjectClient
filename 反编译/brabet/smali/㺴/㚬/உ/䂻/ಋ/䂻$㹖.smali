.class public abstract L㺴/㚬/உ/䂻/ಋ/䂻$㹖;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㺴/㚬/உ/䂻/ಋ/䂻;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "\u3e56"
.end annotation


# instance fields
.field public உ:Z

.field public 㚬:F

.field public final synthetic 㺴:L㺴/㚬/உ/䂻/ಋ/䂻;

.field public 䂻:F


# direct methods
.method public constructor <init>(L㺴/㚬/உ/䂻/ಋ/䂻;)V
    .locals 0

    iput-object p1, p0, L㺴/㚬/உ/䂻/ಋ/䂻$㹖;->㺴:L㺴/㚬/உ/䂻/ಋ/䂻;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(L㺴/㚬/உ/䂻/ಋ/䂻;L㺴/㚬/உ/䂻/ಋ/䂻$உ;)V
    .locals 0

    invoke-direct {p0, p1}, L㺴/㚬/உ/䂻/ಋ/䂻$㹖;-><init>(L㺴/㚬/உ/䂻/ಋ/䂻;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, L㺴/㚬/உ/䂻/ಋ/䂻$㹖;->㺴:L㺴/㚬/உ/䂻/ಋ/䂻;

    iget v0, p0, L㺴/㚬/உ/䂻/ಋ/䂻$㹖;->㚬:F

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, L㺴/㚬/உ/䂻/ಋ/䂻;->ಇ(F)V

    const/4 p1, 0x0

    iput-boolean p1, p0, L㺴/㚬/உ/䂻/ಋ/䂻$㹖;->உ:Z

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-boolean v0, p0, L㺴/㚬/உ/䂻/ಋ/䂻$㹖;->உ:Z

    if-nez v0, :cond_1

    iget-object v0, p0, L㺴/㚬/உ/䂻/ಋ/䂻$㹖;->㺴:L㺴/㚬/உ/䂻/ಋ/䂻;

    iget-object v0, v0, L㺴/㚬/உ/䂻/ಋ/䂻;->䂻:L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->㢏()F

    move-result v0

    :goto_0
    iput v0, p0, L㺴/㚬/உ/䂻/ಋ/䂻$㹖;->䂻:F

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/ಋ/䂻$㹖;->உ()F

    move-result v0

    iput v0, p0, L㺴/㚬/உ/䂻/ಋ/䂻$㹖;->㚬:F

    const/4 v0, 0x1

    iput-boolean v0, p0, L㺴/㚬/உ/䂻/ಋ/䂻$㹖;->உ:Z

    :cond_1
    iget-object v0, p0, L㺴/㚬/உ/䂻/ಋ/䂻$㹖;->㺴:L㺴/㚬/உ/䂻/ಋ/䂻;

    iget v1, p0, L㺴/㚬/உ/䂻/ಋ/䂻$㹖;->䂻:F

    iget v2, p0, L㺴/㚬/உ/䂻/ಋ/䂻$㹖;->㚬:F

    sub-float/2addr v2, v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    mul-float v2, v2, p1

    add-float/2addr v1, v2

    float-to-int p1, v1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, L㺴/㚬/உ/䂻/ಋ/䂻;->ಇ(F)V

    return-void
.end method

.method public abstract உ()F
.end method
