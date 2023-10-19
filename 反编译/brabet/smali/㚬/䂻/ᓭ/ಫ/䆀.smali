.class public L㚬/䂻/ᓭ/ಫ/䆀;
.super Landroid/widget/BaseAdapter;
.source ""


# instance fields
.field public final ᆻ:I

.field public final ḓ:Z

.field public 㚬:I

.field public 㺴:Z

.field public 䂻:L㚬/䂻/ᓭ/ಫ/ᆻ;

.field public final 䆀:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(L㚬/䂻/ᓭ/ಫ/ᆻ;Landroid/view/LayoutInflater;ZI)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, L㚬/䂻/ᓭ/ಫ/䆀;->㚬:I

    iput-boolean p3, p0, L㚬/䂻/ᓭ/ಫ/䆀;->ḓ:Z

    iput-object p2, p0, L㚬/䂻/ᓭ/ಫ/䆀;->䆀:Landroid/view/LayoutInflater;

    iput-object p1, p0, L㚬/䂻/ᓭ/ಫ/䆀;->䂻:L㚬/䂻/ᓭ/ಫ/ᆻ;

    iput p4, p0, L㚬/䂻/ᓭ/ಫ/䆀;->ᆻ:I

    invoke-virtual {p0}, L㚬/䂻/ᓭ/ಫ/䆀;->உ()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    iget-boolean v0, p0, L㚬/䂻/ᓭ/ಫ/䆀;->ḓ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/䆀;->䂻:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {v0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㫏()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/䆀;->䂻:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {v0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ש()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    iget v1, p0, L㚬/䂻/ᓭ/ಫ/䆀;->㚬:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gez v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, L㚬/䂻/ᓭ/ಫ/䆀;->㚬(I)L㚬/䂻/ᓭ/ಫ/ㄏ;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, L㚬/䂻/ᓭ/ಫ/䆀;->䆀:Landroid/view/LayoutInflater;

    iget v1, p0, L㚬/䂻/ᓭ/ಫ/䆀;->ᆻ:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1}, L㚬/䂻/ᓭ/ಫ/䆀;->㚬(I)L㚬/䂻/ᓭ/ಫ/ㄏ;

    move-result-object p3

    invoke-virtual {p3}, L㚬/䂻/ᓭ/ಫ/ㄏ;->getGroupId()I

    move-result p3

    add-int/lit8 v1, p1, -0x1

    if-ltz v1, :cond_1

    invoke-virtual {p0, v1}, L㚬/䂻/ᓭ/ಫ/䆀;->㚬(I)L㚬/䂻/ᓭ/ಫ/ㄏ;

    move-result-object v1

    invoke-virtual {v1}, L㚬/䂻/ᓭ/ಫ/ㄏ;->getGroupId()I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, p3

    :goto_0
    move-object v2, p2

    check-cast v2, Landroidx/appcompat/view/menu/ListMenuItemView;

    iget-object v3, p0, L㚬/䂻/ᓭ/ಫ/䆀;->䂻:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {v3}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㨃()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-eq p3, v1, :cond_2

    const/4 p3, 0x1

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    :goto_1
    invoke-virtual {v2, p3}, Landroidx/appcompat/view/menu/ListMenuItemView;->setGroupDividerEnabled(Z)V

    move-object p3, p2

    check-cast p3, L㚬/䂻/ᓭ/ಫ/ཇ$உ;

    iget-boolean v1, p0, L㚬/䂻/ᓭ/ಫ/䆀;->㺴:Z

    if-eqz v1, :cond_3

    invoke-virtual {v2, v4}, Landroidx/appcompat/view/menu/ListMenuItemView;->setForceShowIcon(Z)V

    :cond_3
    invoke-virtual {p0, p1}, L㚬/䂻/ᓭ/ಫ/䆀;->㚬(I)L㚬/䂻/ᓭ/ಫ/ㄏ;

    move-result-object p1

    invoke-interface {p3, p1, v0}, L㚬/䂻/ᓭ/ಫ/ཇ$உ;->ḓ(L㚬/䂻/ᓭ/ಫ/ㄏ;I)V

    return-object p2
.end method

.method public notifyDataSetChanged()V
    .locals 0

    invoke-virtual {p0}, L㚬/䂻/ᓭ/ಫ/䆀;->உ()V

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public உ()V
    .locals 5

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/䆀;->䂻:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {v0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㢏()L㚬/䂻/ᓭ/ಫ/ㄏ;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, L㚬/䂻/ᓭ/ಫ/䆀;->䂻:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {v1}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㫏()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, L㚬/䂻/ᓭ/ಫ/ㄏ;

    if-ne v4, v0, :cond_0

    iput v3, p0, L㚬/䂻/ᓭ/ಫ/䆀;->㚬:I

    return-void

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, L㚬/䂻/ᓭ/ಫ/䆀;->㚬:I

    return-void
.end method

.method public 㚬(I)L㚬/䂻/ᓭ/ಫ/ㄏ;
    .locals 2

    iget-boolean v0, p0, L㚬/䂻/ᓭ/ಫ/䆀;->ḓ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/䆀;->䂻:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {v0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㫏()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/䆀;->䂻:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {v0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ש()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    iget v1, p0, L㚬/䂻/ᓭ/ಫ/䆀;->㚬:I

    if-ltz v1, :cond_1

    if-lt p1, v1, :cond_1

    add-int/lit8 p1, p1, 0x1

    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, L㚬/䂻/ᓭ/ಫ/ㄏ;

    return-object p1
.end method

.method public 㺴(Z)V
    .locals 0

    iput-boolean p1, p0, L㚬/䂻/ᓭ/ಫ/䆀;->㺴:Z

    return-void
.end method

.method public 䂻()L㚬/䂻/ᓭ/ಫ/ᆻ;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/䆀;->䂻:L㚬/䂻/ᓭ/ಫ/ᆻ;

    return-object v0
.end method
