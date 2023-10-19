.class public L㚬/䂻/ᓭ/ಫ/㺴$㚬$உ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L㚬/䂻/ᓭ/ಫ/㺴$㚬;->உ(L㚬/䂻/ᓭ/ಫ/ᆻ;Landroid/view/MenuItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic ḓ:L㚬/䂻/ᓭ/ಫ/㺴$㚬;

.field public final synthetic 㚬:Landroid/view/MenuItem;

.field public final synthetic 㺴:L㚬/䂻/ᓭ/ಫ/ᆻ;

.field public final synthetic 䂻:L㚬/䂻/ᓭ/ಫ/㺴$㺴;


# direct methods
.method public constructor <init>(L㚬/䂻/ᓭ/ಫ/㺴$㚬;L㚬/䂻/ᓭ/ಫ/㺴$㺴;Landroid/view/MenuItem;L㚬/䂻/ᓭ/ಫ/ᆻ;)V
    .locals 0

    iput-object p1, p0, L㚬/䂻/ᓭ/ಫ/㺴$㚬$உ;->ḓ:L㚬/䂻/ᓭ/ಫ/㺴$㚬;

    iput-object p2, p0, L㚬/䂻/ᓭ/ಫ/㺴$㚬$உ;->䂻:L㚬/䂻/ᓭ/ಫ/㺴$㺴;

    iput-object p3, p0, L㚬/䂻/ᓭ/ಫ/㺴$㚬$உ;->㚬:Landroid/view/MenuItem;

    iput-object p4, p0, L㚬/䂻/ᓭ/ಫ/㺴$㚬$உ;->㺴:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㺴$㚬$உ;->䂻:L㚬/䂻/ᓭ/ಫ/㺴$㺴;

    if-eqz v0, :cond_0

    iget-object v1, p0, L㚬/䂻/ᓭ/ಫ/㺴$㚬$உ;->ḓ:L㚬/䂻/ᓭ/ಫ/㺴$㚬;

    iget-object v1, v1, L㚬/䂻/ᓭ/ಫ/㺴$㚬;->䂻:L㚬/䂻/ᓭ/ಫ/㺴;

    const/4 v2, 0x1

    iput-boolean v2, v1, L㚬/䂻/ᓭ/ಫ/㺴;->ᾦ:Z

    iget-object v0, v0, L㚬/䂻/ᓭ/ಫ/㺴$㺴;->䂻:L㚬/䂻/ᓭ/ಫ/ᆻ;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ḓ(Z)V

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㺴$㚬$உ;->ḓ:L㚬/䂻/ᓭ/ಫ/㺴$㚬;

    iget-object v0, v0, L㚬/䂻/ᓭ/ಫ/㺴$㚬;->䂻:L㚬/䂻/ᓭ/ಫ/㺴;

    iput-boolean v1, v0, L㚬/䂻/ᓭ/ಫ/㺴;->ᾦ:Z

    :cond_0
    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㺴$㚬$உ;->㚬:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㺴$㚬$உ;->㚬:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㺴$㚬$உ;->㺴:L㚬/䂻/ᓭ/ಫ/ᆻ;

    iget-object v1, p0, L㚬/䂻/ᓭ/ಫ/㺴$㚬$உ;->㚬:Landroid/view/MenuItem;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㭢(Landroid/view/MenuItem;I)Z

    :cond_1
    return-void
.end method
