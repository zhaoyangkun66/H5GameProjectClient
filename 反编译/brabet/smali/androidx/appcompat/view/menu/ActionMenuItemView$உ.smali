.class public Landroidx/appcompat/view/menu/ActionMenuItemView$உ;
.super L㚬/䂻/ბ/ᰘ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/ActionMenuItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "\u0b89"
.end annotation


# instance fields
.field public final synthetic 㧦:Landroidx/appcompat/view/menu/ActionMenuItemView;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/ActionMenuItemView;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView$உ;->㧦:Landroidx/appcompat/view/menu/ActionMenuItemView;

    invoke-direct {p0, p1}, L㚬/䂻/ბ/ᰘ;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public 㚬()Z
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItemView$உ;->㧦:Landroidx/appcompat/view/menu/ActionMenuItemView;

    iget-object v1, v0, Landroidx/appcompat/view/menu/ActionMenuItemView;->ㄏ:L㚬/䂻/ᓭ/ಫ/ᆻ$䂻;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroidx/appcompat/view/menu/ActionMenuItemView;->䆀:L㚬/䂻/ᓭ/ಫ/ㄏ;

    invoke-interface {v1, v0}, L㚬/䂻/ᓭ/ಫ/ᆻ$䂻;->உ(L㚬/䂻/ᓭ/ಫ/ㄏ;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ActionMenuItemView$உ;->䂻()L㚬/䂻/ᓭ/ಫ/ბ;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, L㚬/䂻/ᓭ/ಫ/ბ;->䂻()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public 䂻()L㚬/䂻/ᓭ/ಫ/ბ;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItemView$உ;->㧦:Landroidx/appcompat/view/menu/ActionMenuItemView;

    iget-object v0, v0, Landroidx/appcompat/view/menu/ActionMenuItemView;->㧦:Landroidx/appcompat/view/menu/ActionMenuItemView$䂻;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ActionMenuItemView$䂻;->உ()L㚬/䂻/ᓭ/ಫ/ბ;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
