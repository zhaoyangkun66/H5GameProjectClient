.class public L㚬/䂻/ᓭ/ಫ/㲝$䂻;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/䂻/ᓭ/ಫ/㲝;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic 䂻:L㚬/䂻/ᓭ/ಫ/㲝;


# direct methods
.method public constructor <init>(L㚬/䂻/ᓭ/ಫ/㲝;)V
    .locals 0

    iput-object p1, p0, L㚬/䂻/ᓭ/ಫ/㲝$䂻;->䂻:L㚬/䂻/ᓭ/ಫ/㲝;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㲝$䂻;->䂻:L㚬/䂻/ᓭ/ಫ/㲝;

    iget-object v0, v0, L㚬/䂻/ᓭ/ಫ/㲝;->㲝:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㲝$䂻;->䂻:L㚬/䂻/ᓭ/ಫ/㲝;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iput-object v1, v0, L㚬/䂻/ᓭ/ಫ/㲝;->㲝:Landroid/view/ViewTreeObserver;

    :cond_0
    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㲝$䂻;->䂻:L㚬/䂻/ᓭ/ಫ/㲝;

    iget-object v1, v0, L㚬/䂻/ᓭ/ಫ/㲝;->㲝:Landroid/view/ViewTreeObserver;

    iget-object v0, v0, L㚬/䂻/ᓭ/ಫ/㲝;->㧦:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method
