.class public L㚬/䂻/ᓭ/ಫ/ಫ$㺴;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/䂻/ᓭ/ಫ/ಫ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "\u3eb4"
.end annotation


# instance fields
.field public final உ:Landroid/view/MenuItem$OnActionExpandListener;

.field public final synthetic 䂻:L㚬/䂻/ᓭ/ಫ/ಫ;


# direct methods
.method public constructor <init>(L㚬/䂻/ᓭ/ಫ/ಫ;Landroid/view/MenuItem$OnActionExpandListener;)V
    .locals 0

    iput-object p1, p0, L㚬/䂻/ᓭ/ಫ/ಫ$㺴;->䂻:L㚬/䂻/ᓭ/ಫ/ಫ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, L㚬/䂻/ᓭ/ಫ/ಫ$㺴;->உ:Landroid/view/MenuItem$OnActionExpandListener;

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ಫ$㺴;->உ:Landroid/view/MenuItem$OnActionExpandListener;

    iget-object v1, p0, L㚬/䂻/ᓭ/ಫ/ಫ$㺴;->䂻:L㚬/䂻/ᓭ/ಫ/ಫ;

    invoke-virtual {v1, p1}, L㚬/䂻/ᓭ/ಫ/㚬;->㚬(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ಫ$㺴;->உ:Landroid/view/MenuItem$OnActionExpandListener;

    iget-object v1, p0, L㚬/䂻/ᓭ/ಫ/ಫ$㺴;->䂻:L㚬/䂻/ᓭ/ಫ/ಫ;

    invoke-virtual {v1, p1}, L㚬/䂻/ᓭ/ಫ/㚬;->㚬(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
