.class public L㺴/㚬/உ/䂻/ಋ/䂻$உ;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L㺴/㚬/உ/䂻/ಋ/䂻;->㢏(L㺴/㚬/உ/䂻/ಋ/䂻$ಫ;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public உ:Z

.field public final synthetic 㚬:L㺴/㚬/உ/䂻/ಋ/䂻$ಫ;

.field public final synthetic 㺴:L㺴/㚬/உ/䂻/ಋ/䂻;

.field public final synthetic 䂻:Z


# direct methods
.method public constructor <init>(L㺴/㚬/உ/䂻/ಋ/䂻;ZL㺴/㚬/உ/䂻/ಋ/䂻$ಫ;)V
    .locals 0

    iput-object p1, p0, L㺴/㚬/உ/䂻/ಋ/䂻$உ;->㺴:L㺴/㚬/உ/䂻/ಋ/䂻;

    iput-boolean p2, p0, L㺴/㚬/உ/䂻/ಋ/䂻$உ;->䂻:Z

    iput-object p3, p0, L㺴/㚬/உ/䂻/ಋ/䂻$உ;->㚬:L㺴/㚬/உ/䂻/ಋ/䂻$ಫ;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, L㺴/㚬/உ/䂻/ಋ/䂻$உ;->உ:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, L㺴/㚬/உ/䂻/ಋ/䂻$உ;->㺴:L㺴/㚬/உ/䂻/ಋ/䂻;

    const/4 v0, 0x0

    invoke-static {p1, v0}, L㺴/㚬/உ/䂻/ಋ/䂻;->உ(L㺴/㚬/உ/䂻/ಋ/䂻;I)I

    iget-object p1, p0, L㺴/㚬/உ/䂻/ಋ/䂻$உ;->㺴:L㺴/㚬/உ/䂻/ಋ/䂻;

    const/4 v0, 0x0

    invoke-static {p1, v0}, L㺴/㚬/உ/䂻/ಋ/䂻;->䂻(L㺴/㚬/உ/䂻/ಋ/䂻;Landroid/animation/Animator;)Landroid/animation/Animator;

    iget-boolean p1, p0, L㺴/㚬/உ/䂻/ಋ/䂻$உ;->உ:Z

    if-nez p1, :cond_1

    iget-object p1, p0, L㺴/㚬/உ/䂻/ಋ/䂻$உ;->㺴:L㺴/㚬/உ/䂻/ಋ/䂻;

    iget-object p1, p1, L㺴/㚬/உ/䂻/ಋ/䂻;->ㄬ:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-boolean v0, p0, L㺴/㚬/உ/䂻/ಋ/䂻$உ;->䂻:Z

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {p1, v1, v0}, L㺴/㚬/உ/䂻/ᾦ/ㄏ;->䂻(IZ)V

    iget-object p1, p0, L㺴/㚬/உ/䂻/ಋ/䂻$உ;->㚬:L㺴/㚬/உ/䂻/ಋ/䂻$ಫ;

    if-eqz p1, :cond_1

    invoke-interface {p1}, L㺴/㚬/உ/䂻/ಋ/䂻$ಫ;->䂻()V

    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, L㺴/㚬/உ/䂻/ಋ/䂻$உ;->㺴:L㺴/㚬/உ/䂻/ಋ/䂻;

    iget-object v0, v0, L㺴/㚬/உ/䂻/ಋ/䂻;->ㄬ:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-boolean v1, p0, L㺴/㚬/உ/䂻/ಋ/䂻$உ;->䂻:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, L㺴/㚬/உ/䂻/ᾦ/ㄏ;->䂻(IZ)V

    iget-object v0, p0, L㺴/㚬/உ/䂻/ಋ/䂻$உ;->㺴:L㺴/㚬/உ/䂻/ಋ/䂻;

    const/4 v1, 0x1

    invoke-static {v0, v1}, L㺴/㚬/உ/䂻/ಋ/䂻;->உ(L㺴/㚬/உ/䂻/ಋ/䂻;I)I

    iget-object v0, p0, L㺴/㚬/உ/䂻/ಋ/䂻$உ;->㺴:L㺴/㚬/உ/䂻/ಋ/䂻;

    invoke-static {v0, p1}, L㺴/㚬/உ/䂻/ಋ/䂻;->䂻(L㺴/㚬/உ/䂻/ಋ/䂻;Landroid/animation/Animator;)Landroid/animation/Animator;

    iput-boolean v2, p0, L㺴/㚬/உ/䂻/ಋ/䂻$உ;->உ:Z

    return-void
.end method
