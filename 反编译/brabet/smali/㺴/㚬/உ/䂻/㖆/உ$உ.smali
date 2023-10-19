.class public L㺴/㚬/உ/䂻/㖆/உ$உ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㺴/㚬/உ/䂻/㖆/உ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic 䂻:L㺴/㚬/உ/䂻/㖆/உ;


# direct methods
.method public constructor <init>(L㺴/㚬/உ/䂻/㖆/உ;)V
    .locals 0

    iput-object p1, p0, L㺴/㚬/உ/䂻/㖆/உ$உ;->䂻:L㺴/㚬/உ/䂻/㖆/உ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    invoke-static {p1}, L㺴/㚬/உ/䂻/㖆/உ;->㺴(Landroid/text/Editable;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, L㺴/㚬/உ/䂻/㖆/உ$உ;->䂻:L㺴/㚬/உ/䂻/㖆/உ;

    iget-object p1, p1, L㺴/㚬/உ/䂻/㖆/ḓ;->உ:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->ש()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, L㺴/㚬/உ/䂻/㖆/உ$உ;->䂻:L㺴/㚬/உ/䂻/㖆/உ;

    invoke-static {p1}, L㺴/㚬/உ/䂻/㖆/உ;->ḓ(L㺴/㚬/உ/䂻/㖆/உ;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object p1, p0, L㺴/㚬/உ/䂻/㖆/உ$உ;->䂻:L㺴/㚬/உ/䂻/㖆/உ;

    invoke-static {p1}, L㺴/㚬/உ/䂻/㖆/உ;->䆀(L㺴/㚬/உ/䂻/㖆/உ;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, L㺴/㚬/உ/䂻/㖆/உ$உ;->䂻:L㺴/㚬/உ/䂻/㖆/உ;

    invoke-static {p1}, L㺴/㚬/உ/䂻/㖆/உ;->䆀(L㺴/㚬/உ/䂻/㖆/உ;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object p1, p0, L㺴/㚬/உ/䂻/㖆/உ$உ;->䂻:L㺴/㚬/உ/䂻/㖆/உ;

    invoke-static {p1}, L㺴/㚬/உ/䂻/㖆/உ;->ḓ(L㺴/㚬/உ/䂻/㖆/உ;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
