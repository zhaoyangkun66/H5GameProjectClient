.class public Lcom/google/android/material/transformation/ExpandableBehavior$உ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/transformation/ExpandableBehavior;->㹖(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic ḓ:Lcom/google/android/material/transformation/ExpandableBehavior;

.field public final synthetic 㚬:I

.field public final synthetic 㺴:L㺴/㚬/உ/䂻/㫏/உ;

.field public final synthetic 䂻:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/google/android/material/transformation/ExpandableBehavior;Landroid/view/View;IL㺴/㚬/உ/䂻/㫏/உ;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/transformation/ExpandableBehavior$உ;->ḓ:Lcom/google/android/material/transformation/ExpandableBehavior;

    iput-object p2, p0, Lcom/google/android/material/transformation/ExpandableBehavior$உ;->䂻:Landroid/view/View;

    iput p3, p0, Lcom/google/android/material/transformation/ExpandableBehavior$உ;->㚬:I

    iput-object p4, p0, Lcom/google/android/material/transformation/ExpandableBehavior$உ;->㺴:L㺴/㚬/உ/䂻/㫏/உ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 5

    iget-object v0, p0, Lcom/google/android/material/transformation/ExpandableBehavior$உ;->䂻:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/google/android/material/transformation/ExpandableBehavior$உ;->ḓ:Lcom/google/android/material/transformation/ExpandableBehavior;

    invoke-static {v0}, Lcom/google/android/material/transformation/ExpandableBehavior;->ש(Lcom/google/android/material/transformation/ExpandableBehavior;)I

    move-result v0

    iget v1, p0, Lcom/google/android/material/transformation/ExpandableBehavior$உ;->㚬:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/transformation/ExpandableBehavior$உ;->ḓ:Lcom/google/android/material/transformation/ExpandableBehavior;

    iget-object v1, p0, Lcom/google/android/material/transformation/ExpandableBehavior$உ;->㺴:L㺴/㚬/உ/䂻/㫏/உ;

    move-object v3, v1

    check-cast v3, Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/material/transformation/ExpandableBehavior$உ;->䂻:Landroid/view/View;

    invoke-interface {v1}, L㺴/㚬/உ/䂻/㫏/உ;->உ()Z

    move-result v1

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/google/android/material/transformation/ExpandableBehavior;->ᱹ(Landroid/view/View;Landroid/view/View;ZZ)Z

    :cond_0
    return v2
.end method
