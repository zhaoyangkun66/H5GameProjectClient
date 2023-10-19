.class public L㺴/㚬/உ/䂻/ಋ/䂻$䂻;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L㺴/㚬/உ/䂻/ಋ/䂻;->㲊(L㺴/㚬/உ/䂻/ಋ/䂻$ಫ;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic உ:Z

.field public final synthetic 㚬:L㺴/㚬/உ/䂻/ಋ/䂻;

.field public final synthetic 䂻:L㺴/㚬/உ/䂻/ಋ/䂻$ಫ;


# direct methods
.method public constructor <init>(L㺴/㚬/உ/䂻/ಋ/䂻;ZL㺴/㚬/உ/䂻/ಋ/䂻$ಫ;)V
    .locals 0

    iput-object p1, p0, L㺴/㚬/உ/䂻/ಋ/䂻$䂻;->㚬:L㺴/㚬/உ/䂻/ಋ/䂻;

    iput-boolean p2, p0, L㺴/㚬/உ/䂻/ಋ/䂻$䂻;->உ:Z

    iput-object p3, p0, L㺴/㚬/உ/䂻/ಋ/䂻$䂻;->䂻:L㺴/㚬/உ/䂻/ಋ/䂻$ಫ;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, L㺴/㚬/உ/䂻/ಋ/䂻$䂻;->㚬:L㺴/㚬/உ/䂻/ಋ/䂻;

    const/4 v0, 0x0

    invoke-static {p1, v0}, L㺴/㚬/உ/䂻/ಋ/䂻;->உ(L㺴/㚬/உ/䂻/ಋ/䂻;I)I

    iget-object p1, p0, L㺴/㚬/உ/䂻/ಋ/䂻$䂻;->㚬:L㺴/㚬/உ/䂻/ಋ/䂻;

    const/4 v0, 0x0

    invoke-static {p1, v0}, L㺴/㚬/உ/䂻/ಋ/䂻;->䂻(L㺴/㚬/உ/䂻/ಋ/䂻;Landroid/animation/Animator;)Landroid/animation/Animator;

    iget-object p1, p0, L㺴/㚬/உ/䂻/ಋ/䂻$䂻;->䂻:L㺴/㚬/உ/䂻/ಋ/䂻$ಫ;

    if-eqz p1, :cond_0

    invoke-interface {p1}, L㺴/㚬/உ/䂻/ಋ/䂻$ಫ;->உ()V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, L㺴/㚬/உ/䂻/ಋ/䂻$䂻;->㚬:L㺴/㚬/உ/䂻/ಋ/䂻;

    iget-object v0, v0, L㺴/㚬/உ/䂻/ಋ/䂻;->ㄬ:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-boolean v1, p0, L㺴/㚬/உ/䂻/ಋ/䂻$䂻;->உ:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, L㺴/㚬/உ/䂻/ᾦ/ㄏ;->䂻(IZ)V

    iget-object v0, p0, L㺴/㚬/உ/䂻/ಋ/䂻$䂻;->㚬:L㺴/㚬/உ/䂻/ಋ/䂻;

    const/4 v1, 0x2

    invoke-static {v0, v1}, L㺴/㚬/உ/䂻/ಋ/䂻;->உ(L㺴/㚬/உ/䂻/ಋ/䂻;I)I

    iget-object v0, p0, L㺴/㚬/உ/䂻/ಋ/䂻$䂻;->㚬:L㺴/㚬/உ/䂻/ಋ/䂻;

    invoke-static {v0, p1}, L㺴/㚬/உ/䂻/ಋ/䂻;->䂻(L㺴/㚬/உ/䂻/ಋ/䂻;Landroid/animation/Animator;)Landroid/animation/Animator;

    return-void
.end method
