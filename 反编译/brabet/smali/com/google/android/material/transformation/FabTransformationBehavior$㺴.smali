.class public Lcom/google/android/material/transformation/FabTransformationBehavior$㺴;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/transformation/FabTransformationBehavior;->㲊(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$ḓ;FFLjava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic உ:L㺴/㚬/உ/䂻/ḙ/㺴;


# direct methods
.method public constructor <init>(Lcom/google/android/material/transformation/FabTransformationBehavior;L㺴/㚬/உ/䂻/ḙ/㺴;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$㺴;->உ:L㺴/㚬/உ/䂻/ḙ/㺴;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$㺴;->உ:L㺴/㚬/உ/䂻/ḙ/㺴;

    invoke-interface {p1}, L㺴/㚬/உ/䂻/ḙ/㺴;->getRevealInfo()L㺴/㚬/உ/䂻/ḙ/㺴$ḓ;

    move-result-object p1

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p1, L㺴/㚬/உ/䂻/ḙ/㺴$ḓ;->㚬:F

    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$㺴;->உ:L㺴/㚬/உ/䂻/ḙ/㺴;

    invoke-interface {v0, p1}, L㺴/㚬/உ/䂻/ḙ/㺴;->setRevealInfo(L㺴/㚬/உ/䂻/ḙ/㺴$ḓ;)V

    return-void
.end method
