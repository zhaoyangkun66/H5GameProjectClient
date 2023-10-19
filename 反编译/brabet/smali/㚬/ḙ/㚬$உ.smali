.class public L㚬/ḙ/㚬$உ;
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
.field public final synthetic உ:Landroid/view/ViewGroup;

.field public final synthetic 㚬:Landroid/view/View;

.field public final synthetic 㺴:F

.field public final synthetic 䂻:Landroid/graphics/drawable/BitmapDrawable;


# direct methods
.method public constructor <init>(L㚬/ḙ/㚬;Landroid/view/ViewGroup;Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;F)V
    .locals 0

    iput-object p2, p0, L㚬/ḙ/㚬$உ;->உ:Landroid/view/ViewGroup;

    iput-object p3, p0, L㚬/ḙ/㚬$உ;->䂻:Landroid/graphics/drawable/BitmapDrawable;

    iput-object p4, p0, L㚬/ḙ/㚬$உ;->㚬:Landroid/view/View;

    iput p5, p0, L㚬/ḙ/㚬$உ;->㺴:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, L㚬/ḙ/㚬$உ;->உ:Landroid/view/ViewGroup;

    invoke-static {p1}, L㚬/ḙ/ڈ;->䂻(Landroid/view/View;)L㚬/ḙ/ᾦ;

    move-result-object p1

    iget-object v0, p0, L㚬/ḙ/㚬$உ;->䂻:Landroid/graphics/drawable/BitmapDrawable;

    invoke-interface {p1, v0}, L㚬/ḙ/ᾦ;->㺴(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, L㚬/ḙ/㚬$உ;->㚬:Landroid/view/View;

    iget v0, p0, L㚬/ḙ/㚬$உ;->㺴:F

    invoke-static {p1, v0}, L㚬/ḙ/ڈ;->ᆻ(Landroid/view/View;F)V

    return-void
.end method
