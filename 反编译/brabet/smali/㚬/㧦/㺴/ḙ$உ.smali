.class public L㚬/㧦/㺴/ḙ$உ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L㚬/㧦/㺴/ḙ;->䆀()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic 䂻:Landroid/view/View;


# direct methods
.method public constructor <init>(L㚬/㧦/㺴/ḙ;Landroid/view/View;)V
    .locals 0

    iput-object p2, p0, L㚬/㧦/㺴/ḙ$உ;->䂻:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, L㚬/㧦/㺴/ḙ$உ;->䂻:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p1, p0, L㚬/㧦/㺴/ḙ$உ;->䂻:Landroid/view/View;

    invoke-static {p1}, L㚬/ℓ/ἥ/㭲;->㽛(Landroid/view/View;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
