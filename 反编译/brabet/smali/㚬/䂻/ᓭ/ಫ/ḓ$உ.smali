.class public L㚬/䂻/ᓭ/ಫ/ḓ$உ;
.super Landroid/widget/BaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/䂻/ᓭ/ಫ/ḓ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "\u0b89"
.end annotation


# instance fields
.field public final synthetic 㚬:L㚬/䂻/ᓭ/ಫ/ḓ;

.field public 䂻:I


# direct methods
.method public constructor <init>(L㚬/䂻/ᓭ/ಫ/ḓ;)V
    .locals 0

    iput-object p1, p0, L㚬/䂻/ᓭ/ಫ/ḓ$உ;->㚬:L㚬/䂻/ᓭ/ಫ/ḓ;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, L㚬/䂻/ᓭ/ಫ/ḓ$உ;->䂻:I

    invoke-virtual {p0}, L㚬/䂻/ᓭ/ಫ/ḓ$உ;->உ()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ḓ$உ;->㚬:L㚬/䂻/ᓭ/ಫ/ḓ;

    iget-object v0, v0, L㚬/䂻/ᓭ/ಫ/ḓ;->㺴:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {v0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㫏()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, L㚬/䂻/ᓭ/ಫ/ḓ$உ;->㚬:L㚬/䂻/ᓭ/ಫ/ḓ;

    iget v1, v1, L㚬/䂻/ᓭ/ಫ/ḓ;->䆀:I

    sub-int/2addr v0, v1

    iget v1, p0, L㚬/䂻/ᓭ/ಫ/ḓ$உ;->䂻:I

    if-gez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, L㚬/䂻/ᓭ/ಫ/ḓ$உ;->䂻(I)L㚬/䂻/ᓭ/ಫ/ㄏ;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, L㚬/䂻/ᓭ/ಫ/ḓ$உ;->㚬:L㚬/䂻/ᓭ/ಫ/ḓ;

    iget-object v1, p2, L㚬/䂻/ᓭ/ಫ/ḓ;->㚬:Landroid/view/LayoutInflater;

    iget p2, p2, L㚬/䂻/ᓭ/ಫ/ḓ;->ℓ:I

    invoke-virtual {v1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object p3, p2

    check-cast p3, L㚬/䂻/ᓭ/ಫ/ཇ$உ;

    invoke-virtual {p0, p1}, L㚬/䂻/ᓭ/ಫ/ḓ$உ;->䂻(I)L㚬/䂻/ᓭ/ಫ/ㄏ;

    move-result-object p1

    invoke-interface {p3, p1, v0}, L㚬/䂻/ᓭ/ಫ/ཇ$உ;->ḓ(L㚬/䂻/ᓭ/ಫ/ㄏ;I)V

    return-object p2
.end method

.method public notifyDataSetChanged()V
    .locals 0

    invoke-virtual {p0}, L㚬/䂻/ᓭ/ಫ/ḓ$உ;->உ()V

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public உ()V
    .locals 5

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ḓ$உ;->㚬:L㚬/䂻/ᓭ/ಫ/ḓ;

    iget-object v0, v0, L㚬/䂻/ᓭ/ಫ/ḓ;->㺴:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {v0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㢏()L㚬/䂻/ᓭ/ಫ/ㄏ;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, L㚬/䂻/ᓭ/ಫ/ḓ$உ;->㚬:L㚬/䂻/ᓭ/ಫ/ḓ;

    iget-object v1, v1, L㚬/䂻/ᓭ/ಫ/ḓ;->㺴:L㚬/䂻/ᓭ/ಫ/ᆻ;

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

    iput v3, p0, L㚬/䂻/ᓭ/ಫ/ḓ$உ;->䂻:I

    return-void

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, L㚬/䂻/ᓭ/ಫ/ḓ$உ;->䂻:I

    return-void
.end method

.method public 䂻(I)L㚬/䂻/ᓭ/ಫ/ㄏ;
    .locals 2

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/ḓ$உ;->㚬:L㚬/䂻/ᓭ/ಫ/ḓ;

    iget-object v0, v0, L㚬/䂻/ᓭ/ಫ/ḓ;->㺴:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {v0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㫏()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, L㚬/䂻/ᓭ/ಫ/ḓ$உ;->㚬:L㚬/䂻/ᓭ/ಫ/ḓ;

    iget v1, v1, L㚬/䂻/ᓭ/ಫ/ḓ;->䆀:I

    add-int/2addr p1, v1

    iget v1, p0, L㚬/䂻/ᓭ/ಫ/ḓ$உ;->䂻:I

    if-ltz v1, :cond_0

    if-lt p1, v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, L㚬/䂻/ᓭ/ಫ/ㄏ;

    return-object p1
.end method
