.class public L㺴/㚬/உ/䂻/㢏/ℓ$㺴;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements L㺴/㚬/உ/䂻/㢏/ℓ$㹖;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L㺴/㚬/உ/䂻/㢏/ℓ;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic உ:L㺴/㚬/உ/䂻/㢏/ℓ;


# direct methods
.method public constructor <init>(L㺴/㚬/உ/䂻/㢏/ℓ;)V
    .locals 0

    iput-object p1, p0, L㺴/㚬/உ/䂻/㢏/ℓ$㺴;->உ:L㺴/㚬/உ/䂻/㢏/ℓ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public உ(J)V
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/ℓ$㺴;->உ:L㺴/㚬/உ/䂻/㢏/ℓ;

    invoke-static {v0}, L㺴/㚬/உ/䂻/㢏/ℓ;->㺴(L㺴/㚬/உ/䂻/㢏/ℓ;)L㺴/㚬/உ/䂻/㢏/உ;

    move-result-object v0

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/㢏/உ;->ཇ()L㺴/㚬/உ/䂻/㢏/உ$㚬;

    move-result-object v0

    invoke-interface {v0, p1, p2}, L㺴/㚬/உ/䂻/㢏/உ$㚬;->ḓ(J)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/ℓ$㺴;->உ:L㺴/㚬/உ/䂻/㢏/ℓ;

    invoke-static {v0}, L㺴/㚬/உ/䂻/㢏/ℓ;->ḓ(L㺴/㚬/உ/䂻/㢏/ℓ;)L㺴/㚬/உ/䂻/㢏/㺴;

    move-result-object v0

    invoke-interface {v0, p1, p2}, L㺴/㚬/உ/䂻/㢏/㺴;->ᆻ(J)V

    iget-object p1, p0, L㺴/㚬/உ/䂻/㢏/ℓ$㺴;->உ:L㺴/㚬/உ/䂻/㢏/ℓ;

    iget-object p1, p1, L㺴/㚬/உ/䂻/㢏/ბ;->䂻:Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, L㺴/㚬/உ/䂻/㢏/ᓭ;

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/ℓ$㺴;->உ:L㺴/㚬/உ/䂻/㢏/ℓ;

    invoke-static {v0}, L㺴/㚬/உ/䂻/㢏/ℓ;->ḓ(L㺴/㚬/உ/䂻/㢏/ℓ;)L㺴/㚬/உ/䂻/㢏/㺴;

    move-result-object v0

    invoke-interface {v0}, L㺴/㚬/உ/䂻/㢏/㺴;->உ()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, L㺴/㚬/உ/䂻/㢏/ᓭ;->உ(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, L㺴/㚬/உ/䂻/㢏/ℓ$㺴;->உ:L㺴/㚬/உ/䂻/㢏/ℓ;

    invoke-static {p1}, L㺴/㚬/உ/䂻/㢏/ℓ;->㚬(L㺴/㚬/உ/䂻/㢏/ℓ;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$ᆻ;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ᆻ;->ℓ()V

    iget-object p1, p0, L㺴/㚬/உ/䂻/㢏/ℓ$㺴;->உ:L㺴/㚬/உ/䂻/㢏/ℓ;

    invoke-static {p1}, L㺴/㚬/உ/䂻/㢏/ℓ;->䆀(L㺴/㚬/உ/䂻/㢏/ℓ;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, L㺴/㚬/உ/䂻/㢏/ℓ$㺴;->உ:L㺴/㚬/உ/䂻/㢏/ℓ;

    invoke-static {p1}, L㺴/㚬/உ/䂻/㢏/ℓ;->䆀(L㺴/㚬/உ/䂻/㢏/ℓ;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$ᆻ;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ᆻ;->ℓ()V

    :cond_1
    return-void
.end method
