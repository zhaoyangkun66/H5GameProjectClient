.class public Lcom/google/android/material/transformation/FabTransformationBehavior$㚬;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/transformation/FabTransformationBehavior;->ᘚ(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$ḓ;Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic உ:L㺴/㚬/உ/䂻/ḙ/㺴;

.field public final synthetic 䂻:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lcom/google/android/material/transformation/FabTransformationBehavior;L㺴/㚬/உ/䂻/ḙ/㺴;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$㚬;->உ:L㺴/㚬/உ/䂻/ḙ/㺴;

    iput-object p3, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$㚬;->䂻:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$㚬;->உ:L㺴/㚬/உ/䂻/ḙ/㺴;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, L㺴/㚬/உ/䂻/ḙ/㺴;->setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$㚬;->உ:L㺴/㚬/உ/䂻/ḙ/㺴;

    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$㚬;->䂻:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v0}, L㺴/㚬/உ/䂻/ḙ/㺴;->setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
