.class public L㺴/㚬/உ/䂻/ᾦ/ḓ$உ;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㺴/㚬/உ/䂻/ᾦ/ḓ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic உ:L㺴/㚬/உ/䂻/ᾦ/ḓ;


# direct methods
.method public constructor <init>(L㺴/㚬/உ/䂻/ᾦ/ḓ;)V
    .locals 0

    iput-object p1, p0, L㺴/㚬/உ/䂻/ᾦ/ḓ$உ;->உ:L㺴/㚬/உ/䂻/ᾦ/ḓ;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᾦ/ḓ$உ;->உ:L㺴/㚬/உ/䂻/ᾦ/ḓ;

    iget-object v1, v0, L㺴/㚬/உ/䂻/ᾦ/ḓ;->㚬:Landroid/animation/ValueAnimator;

    if-ne v1, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, v0, L㺴/㚬/உ/䂻/ᾦ/ḓ;->㚬:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method
