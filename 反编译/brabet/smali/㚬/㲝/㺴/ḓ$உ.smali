.class public final L㚬/㲝/㺴/ḓ$உ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/㲝/㺴/ḓ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "L\u36ac/\u3c9d/\u3eb4/\u1e13$\u36ac;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, L㚬/㲝/㺴/ḓ$㚬;

    check-cast p2, L㚬/㲝/㺴/ḓ$㚬;

    invoke-virtual {p0, p1, p2}, L㚬/㲝/㺴/ḓ$உ;->உ(L㚬/㲝/㺴/ḓ$㚬;L㚬/㲝/㺴/ḓ$㚬;)I

    move-result p1

    return p1
.end method

.method public உ(L㚬/㲝/㺴/ḓ$㚬;L㚬/㲝/㺴/ḓ$㚬;)I
    .locals 6

    iget-object v0, p1, L㚬/㲝/㺴/ḓ$㚬;->㺴:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v4, p2, L㚬/㲝/㺴/ḓ$㚬;->㺴:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    const/4 v5, -0x1

    if-eq v3, v4, :cond_3

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, -0x1

    :goto_2
    return v2

    :cond_3
    iget-boolean v0, p1, L㚬/㲝/㺴/ḓ$㚬;->உ:Z

    iget-boolean v3, p2, L㚬/㲝/㺴/ḓ$㚬;->உ:Z

    if-eq v0, v3, :cond_5

    if-eqz v0, :cond_4

    const/4 v2, -0x1

    :cond_4
    return v2

    :cond_5
    iget v0, p2, L㚬/㲝/㺴/ḓ$㚬;->䂻:I

    iget v2, p1, L㚬/㲝/㺴/ḓ$㚬;->䂻:I

    sub-int/2addr v0, v2

    if-eqz v0, :cond_6

    return v0

    :cond_6
    iget p1, p1, L㚬/㲝/㺴/ḓ$㚬;->㚬:I

    iget p2, p2, L㚬/㲝/㺴/ḓ$㚬;->㚬:I

    sub-int/2addr p1, p2

    if-eqz p1, :cond_7

    return p1

    :cond_7
    return v1
.end method
