.class public L㺴/㚬/உ/䂻/㢏/ℓ$㚬;
.super L㺴/㚬/உ/䂻/㢏/㲝;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L㺴/㚬/உ/䂻/㢏/ℓ;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic ർ:L㺴/㚬/உ/䂻/㢏/ℓ;

.field public final synthetic 㥁:I


# direct methods
.method public constructor <init>(L㺴/㚬/உ/䂻/㢏/ℓ;Landroid/content/Context;IZI)V
    .locals 0

    iput-object p1, p0, L㺴/㚬/உ/䂻/㢏/ℓ$㚬;->ർ:L㺴/㚬/உ/䂻/㢏/ℓ;

    iput p5, p0, L㺴/㚬/உ/䂻/㢏/ℓ$㚬;->㥁:I

    invoke-direct {p0, p2, p3, p4}, L㺴/㚬/உ/䂻/㢏/㲝;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method public 㸜(Landroidx/recyclerview/widget/RecyclerView$ಋ;[I)V
    .locals 2

    iget p1, p0, L㺴/㚬/உ/䂻/㢏/ℓ$㚬;->㥁:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, L㺴/㚬/உ/䂻/㢏/ℓ$㚬;->ർ:L㺴/㚬/உ/䂻/㢏/ℓ;

    invoke-static {p1}, L㺴/㚬/உ/䂻/㢏/ℓ;->㚬(L㺴/㚬/உ/䂻/㢏/ℓ;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    aput p1, p2, v1

    iget-object p1, p0, L㺴/㚬/உ/䂻/㢏/ℓ$㚬;->ർ:L㺴/㚬/உ/䂻/㢏/ℓ;

    invoke-static {p1}, L㺴/㚬/உ/䂻/㢏/ℓ;->㚬(L㺴/㚬/உ/䂻/㢏/ℓ;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    aput p1, p2, v0

    goto :goto_0

    :cond_0
    iget-object p1, p0, L㺴/㚬/உ/䂻/㢏/ℓ$㚬;->ർ:L㺴/㚬/உ/䂻/㢏/ℓ;

    invoke-static {p1}, L㺴/㚬/உ/䂻/㢏/ℓ;->㚬(L㺴/㚬/உ/䂻/㢏/ℓ;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    aput p1, p2, v1

    iget-object p1, p0, L㺴/㚬/உ/䂻/㢏/ℓ$㚬;->ർ:L㺴/㚬/உ/䂻/㢏/ℓ;

    invoke-static {p1}, L㺴/㚬/உ/䂻/㢏/ℓ;->㚬(L㺴/㚬/உ/䂻/㢏/ℓ;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    aput p1, p2, v0

    :goto_0
    return-void
.end method
