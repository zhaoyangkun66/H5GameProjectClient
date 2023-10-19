.class public Landroidx/appcompat/widget/ActionMenuView$㺴;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements L㚬/䂻/ᓭ/ಫ/ᆻ$உ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "\u3eb4"
.end annotation


# instance fields
.field public final synthetic 䂻:Landroidx/appcompat/widget/ActionMenuView;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/ActionMenuView;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView$㺴;->䂻:Landroidx/appcompat/widget/ActionMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public உ(L㚬/䂻/ᓭ/ಫ/ᆻ;Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView$㺴;->䂻:Landroidx/appcompat/widget/ActionMenuView;

    iget-object p1, p1, Landroidx/appcompat/widget/ActionMenuView;->ᾦ:Landroidx/appcompat/widget/ActionMenuView$ḓ;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Landroidx/appcompat/widget/ActionMenuView$ḓ;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public 䂻(L㚬/䂻/ᓭ/ಫ/ᆻ;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView$㺴;->䂻:Landroidx/appcompat/widget/ActionMenuView;

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->ม:L㚬/䂻/ᓭ/ಫ/ᆻ$உ;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, L㚬/䂻/ᓭ/ಫ/ᆻ$உ;->䂻(L㚬/䂻/ᓭ/ಫ/ᆻ;)V

    :cond_0
    return-void
.end method
