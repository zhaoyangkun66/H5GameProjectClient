.class public L㺴/㚬/உ/䂻/㖆/㺴$ㄏ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L㺴/㚬/உ/䂻/㖆/㺴;->㢏(I[F)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic உ:L㺴/㚬/உ/䂻/㖆/㺴;


# direct methods
.method public constructor <init>(L㺴/㚬/உ/䂻/㖆/㺴;)V
    .locals 0

    iput-object p1, p0, L㺴/㚬/உ/䂻/㖆/㺴$ㄏ;->உ:L㺴/㚬/உ/䂻/㖆/㺴;

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

    iget-object v0, p0, L㺴/㚬/உ/䂻/㖆/㺴$ㄏ;->உ:L㺴/㚬/உ/䂻/㖆/㺴;

    iget-object v0, v0, L㺴/㚬/உ/䂻/㖆/ḓ;->㚬:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setAlpha(F)V

    return-void
.end method
