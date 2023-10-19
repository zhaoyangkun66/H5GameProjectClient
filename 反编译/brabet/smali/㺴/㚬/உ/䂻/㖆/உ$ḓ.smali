.class public L㺴/㚬/உ/䂻/㖆/உ$ḓ;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L㺴/㚬/உ/䂻/㖆/உ;->㧦()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic உ:L㺴/㚬/உ/䂻/㖆/உ;


# direct methods
.method public constructor <init>(L㺴/㚬/உ/䂻/㖆/உ;)V
    .locals 0

    iput-object p1, p0, L㺴/㚬/உ/䂻/㖆/உ$ḓ;->உ:L㺴/㚬/உ/䂻/㖆/உ;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, L㺴/㚬/உ/䂻/㖆/உ$ḓ;->உ:L㺴/㚬/உ/䂻/㖆/உ;

    iget-object p1, p1, L㺴/㚬/உ/䂻/㖆/ḓ;->உ:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    return-void
.end method
