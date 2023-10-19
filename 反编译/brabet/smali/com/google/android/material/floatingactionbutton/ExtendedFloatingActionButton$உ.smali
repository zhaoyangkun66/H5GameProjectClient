.class public Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$உ;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->ἥ(L㺴/㚬/உ/䂻/ಋ/㺴;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$㺴;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public உ:Z

.field public final synthetic 㚬:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$㺴;

.field public final synthetic 䂻:L㺴/㚬/உ/䂻/ಋ/㺴;


# direct methods
.method public constructor <init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;L㺴/㚬/உ/䂻/ಋ/㺴;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$㺴;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$உ;->䂻:L㺴/㚬/உ/䂻/ಋ/㺴;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$உ;->உ:Z

    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$உ;->䂻:L㺴/㚬/உ/䂻/ಋ/㺴;

    invoke-interface {p1}, L㺴/㚬/உ/䂻/ಋ/㺴;->㺴()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$உ;->䂻:L㺴/㚬/உ/䂻/ಋ/㺴;

    invoke-interface {p1}, L㺴/㚬/உ/䂻/ಋ/㺴;->㚬()V

    iget-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$உ;->உ:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$உ;->䂻:L㺴/㚬/உ/䂻/ಋ/㺴;

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$உ;->㚬:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$㺴;

    invoke-interface {p1, v0}, L㺴/㚬/உ/䂻/ಋ/㺴;->䆀(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$㺴;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$உ;->䂻:L㺴/㚬/உ/䂻/ಋ/㺴;

    invoke-interface {v0, p1}, L㺴/㚬/உ/䂻/ಋ/㺴;->onAnimationStart(Landroid/animation/Animator;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$உ;->உ:Z

    return-void
.end method
