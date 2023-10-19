.class public L㚬/ḙ/㚬$ㄏ;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L㚬/ḙ/㚬;->ཇ(Landroid/view/ViewGroup;L㚬/ḙ/㭲;L㚬/ḙ/㭲;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public உ:Z

.field public final synthetic ᆻ:I

.field public final synthetic ḓ:I

.field public final synthetic 㚬:Landroid/graphics/Rect;

.field public final synthetic 㺴:I

.field public final synthetic 䂻:Landroid/view/View;

.field public final synthetic 䆀:I


# direct methods
.method public constructor <init>(L㚬/ḙ/㚬;Landroid/view/View;Landroid/graphics/Rect;IIII)V
    .locals 0

    iput-object p2, p0, L㚬/ḙ/㚬$ㄏ;->䂻:Landroid/view/View;

    iput-object p3, p0, L㚬/ḙ/㚬$ㄏ;->㚬:Landroid/graphics/Rect;

    iput p4, p0, L㚬/ḙ/㚬$ㄏ;->㺴:I

    iput p5, p0, L㚬/ḙ/㚬$ㄏ;->ḓ:I

    iput p6, p0, L㚬/ḙ/㚬$ㄏ;->䆀:I

    iput p7, p0, L㚬/ḙ/㚬$ㄏ;->ᆻ:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, L㚬/ḙ/㚬$ㄏ;->உ:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    iget-boolean p1, p0, L㚬/ḙ/㚬$ㄏ;->உ:Z

    if-nez p1, :cond_0

    iget-object p1, p0, L㚬/ḙ/㚬$ㄏ;->䂻:Landroid/view/View;

    iget-object v0, p0, L㚬/ḙ/㚬$ㄏ;->㚬:Landroid/graphics/Rect;

    invoke-static {p1, v0}, L㚬/ℓ/ἥ/㭲;->䆍(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object p1, p0, L㚬/ḙ/㚬$ㄏ;->䂻:Landroid/view/View;

    iget v0, p0, L㚬/ḙ/㚬$ㄏ;->㺴:I

    iget v1, p0, L㚬/ḙ/㚬$ㄏ;->ḓ:I

    iget v2, p0, L㚬/ḙ/㚬$ㄏ;->䆀:I

    iget v3, p0, L㚬/ḙ/㚬$ㄏ;->ᆻ:I

    invoke-static {p1, v0, v1, v2, v3}, L㚬/ḙ/ڈ;->䆀(Landroid/view/View;IIII)V

    :cond_0
    return-void
.end method
