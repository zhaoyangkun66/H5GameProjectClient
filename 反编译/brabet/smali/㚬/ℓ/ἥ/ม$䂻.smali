.class public L㚬/ℓ/ἥ/ม$䂻;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L㚬/ℓ/ἥ/ม;->ㄏ(L㚬/ℓ/ἥ/㫏;)L㚬/ℓ/ἥ/ม;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic உ:L㚬/ℓ/ἥ/㫏;

.field public final synthetic 䂻:Landroid/view/View;


# direct methods
.method public constructor <init>(L㚬/ℓ/ἥ/ม;L㚬/ℓ/ἥ/㫏;Landroid/view/View;)V
    .locals 0

    iput-object p2, p0, L㚬/ℓ/ἥ/ม$䂻;->உ:L㚬/ℓ/ἥ/㫏;

    iput-object p3, p0, L㚬/ℓ/ἥ/ม$䂻;->䂻:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object p1, p0, L㚬/ℓ/ἥ/ม$䂻;->உ:L㚬/ℓ/ἥ/㫏;

    iget-object v0, p0, L㚬/ℓ/ἥ/ม$䂻;->䂻:Landroid/view/View;

    invoke-interface {p1, v0}, L㚬/ℓ/ἥ/㫏;->உ(Landroid/view/View;)V

    return-void
.end method
