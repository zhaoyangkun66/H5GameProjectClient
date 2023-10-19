.class public L㺴/㚬/உ/䂻/㖆/㺴$ℓ;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L㺴/㚬/உ/䂻/㖆/㺴;->㲧()V
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

    iput-object p1, p0, L㺴/㚬/உ/䂻/㖆/㺴$ℓ;->உ:L㺴/㚬/உ/䂻/㖆/㺴;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, L㺴/㚬/உ/䂻/㖆/㺴$ℓ;->உ:L㺴/㚬/உ/䂻/㖆/㺴;

    iget-object v0, p1, L㺴/㚬/உ/䂻/㖆/ḓ;->㚬:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-static {p1}, L㺴/㚬/உ/䂻/㖆/㺴;->ℓ(L㺴/㚬/உ/䂻/㖆/㺴;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    iget-object p1, p0, L㺴/㚬/உ/䂻/㖆/㺴$ℓ;->உ:L㺴/㚬/உ/䂻/㖆/㺴;

    invoke-static {p1}, L㺴/㚬/உ/䂻/㖆/㺴;->ㄏ(L㺴/㚬/உ/䂻/㖆/㺴;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
