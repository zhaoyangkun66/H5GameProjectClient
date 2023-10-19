.class public Lcom/google/android/material/appbar/AppBarLayout$உ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/appbar/AppBarLayout;->ḙ(L㺴/㚬/உ/䂻/ᱹ/ᆻ;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic உ:L㺴/㚬/உ/䂻/ᱹ/ᆻ;


# direct methods
.method public constructor <init>(Lcom/google/android/material/appbar/AppBarLayout;L㺴/㚬/உ/䂻/ᱹ/ᆻ;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/material/appbar/AppBarLayout$உ;->உ:L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout$உ;->உ:L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ⵦ(F)V

    return-void
.end method
