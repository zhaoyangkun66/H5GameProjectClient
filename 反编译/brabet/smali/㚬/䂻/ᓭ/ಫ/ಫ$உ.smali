.class public L㚬/䂻/ᓭ/ಫ/ಫ$உ;
.super L㚬/ℓ/ἥ/䂻;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/䂻/ᓭ/ಫ/ಫ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "\u0b89"
.end annotation


# instance fields
.field public final synthetic 㚬:L㚬/䂻/ᓭ/ಫ/ಫ;

.field public final 䂻:Landroid/view/ActionProvider;


# direct methods
.method public constructor <init>(L㚬/䂻/ᓭ/ಫ/ಫ;Landroid/content/Context;Landroid/view/ActionProvider;)V
    .locals 0

    iput-object p1, p0, L㚬/䂻/ᓭ/ಫ/ಫ$உ;->㚬:L㚬/䂻/ᓭ/ಫ/ಫ;

    invoke-direct {p0, p2}, L㚬/ℓ/ἥ/䂻;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, L㚬/䂻/ᓭ/ಫ/ಫ$உ;->䂻:Landroid/view/ActionProvider;

    return-void
.end method


# virtual methods
.method public உ()Z
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ಫ$உ;->䂻:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->hasSubMenu()Z

    move-result v0

    return v0
.end method

.method public ḓ()Z
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ಫ$உ;->䂻:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->onPerformDefaultAction()Z

    move-result v0

    return v0
.end method

.method public 㚬()Landroid/view/View;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ಫ$உ;->䂻:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->onCreateActionView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public 䆀(Landroid/view/SubMenu;)V
    .locals 2

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ಫ$உ;->䂻:Landroid/view/ActionProvider;

    iget-object v1, p0, L㚬/䂻/ᓭ/ಫ/ಫ$உ;->㚬:L㚬/䂻/ᓭ/ಫ/ಫ;

    invoke-virtual {v1, p1}, L㚬/䂻/ᓭ/ಫ/㚬;->㺴(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/ActionProvider;->onPrepareSubMenu(Landroid/view/SubMenu;)V

    return-void
.end method
