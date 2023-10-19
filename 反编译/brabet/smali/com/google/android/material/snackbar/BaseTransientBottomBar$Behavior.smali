.class public Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;
.super Lcom/google/android/material/behavior/SwipeDismissBehavior;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/behavior/SwipeDismissBehavior<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field public final 㧦:L㺴/㚬/உ/䂻/㥁/உ;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/behavior/SwipeDismissBehavior;-><init>()V

    new-instance v0, L㺴/㚬/உ/䂻/㥁/உ;

    invoke-direct {v0, p0}, L㺴/㚬/உ/䂻/㥁/உ;-><init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;)V

    iput-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;->㧦:L㺴/㚬/உ/䂻/㥁/உ;

    return-void
.end method


# virtual methods
.method public ש(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;->㧦:L㺴/㚬/உ/䂻/㥁/உ;

    invoke-virtual {v0, p1}, L㺴/㚬/உ/䂻/㥁/உ;->உ(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public 㧦(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;->㧦:L㺴/㚬/உ/䂻/㥁/உ;

    invoke-virtual {v0, p1, p2, p3}, L㺴/㚬/உ/䂻/㥁/உ;->䂻(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)V

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->㧦(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
