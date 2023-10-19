.class public L㚬/䂻/ᓭ/ಫ/ಫ$㚬;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements L㚬/䂻/ᓭ/㚬;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/䂻/ᓭ/ಫ/ಫ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u36ac"
.end annotation


# instance fields
.field public final 䂻:Landroid/view/CollapsibleActionView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object v0, p1

    check-cast v0, Landroid/view/CollapsibleActionView;

    iput-object v0, p0, L㚬/䂻/ᓭ/ಫ/ಫ$㚬;->䂻:Landroid/view/CollapsibleActionView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public உ()Landroid/view/View;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ಫ$㚬;->䂻:Landroid/view/CollapsibleActionView;

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public 㚬()V
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ಫ$㚬;->䂻:Landroid/view/CollapsibleActionView;

    invoke-interface {v0}, Landroid/view/CollapsibleActionView;->onActionViewExpanded()V

    return-void
.end method

.method public 䆀()V
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ಫ$㚬;->䂻:Landroid/view/CollapsibleActionView;

    invoke-interface {v0}, Landroid/view/CollapsibleActionView;->onActionViewCollapsed()V

    return-void
.end method
