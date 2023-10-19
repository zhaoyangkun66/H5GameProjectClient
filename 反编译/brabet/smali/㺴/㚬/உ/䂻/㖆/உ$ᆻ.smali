.class public L㺴/㚬/உ/䂻/㖆/உ$ᆻ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L㺴/㚬/உ/䂻/㖆/உ;->ㄏ()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic உ:L㺴/㚬/உ/䂻/㖆/உ;


# direct methods
.method public constructor <init>(L㺴/㚬/உ/䂻/㖆/உ;)V
    .locals 0

    iput-object p1, p0, L㺴/㚬/உ/䂻/㖆/உ$ᆻ;->உ:L㺴/㚬/உ/䂻/㖆/உ;

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

    iget-object v0, p0, L㺴/㚬/உ/䂻/㖆/உ$ᆻ;->உ:L㺴/㚬/உ/䂻/㖆/உ;

    iget-object v0, v0, L㺴/㚬/உ/䂻/㖆/ḓ;->㚬:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setScaleX(F)V

    iget-object v0, p0, L㺴/㚬/உ/䂻/㖆/உ$ᆻ;->உ:L㺴/㚬/உ/䂻/㖆/உ;

    iget-object v0, v0, L㺴/㚬/உ/䂻/㖆/ḓ;->㚬:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setScaleY(F)V

    return-void
.end method
