.class public L㚬/ḙ/ἥ$㚬;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L㚬/ḙ/ἥ;->ḓ(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic உ:L㚬/ḙ/ἥ;


# direct methods
.method public constructor <init>(L㚬/ḙ/ἥ;)V
    .locals 0

    iput-object p1, p0, L㚬/ḙ/ἥ$㚬;->உ:L㚬/ḙ/ἥ;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, L㚬/ḙ/ἥ$㚬;->உ:L㚬/ḙ/ἥ;

    invoke-virtual {v0}, L㚬/ḙ/ἥ;->ბ()V

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
