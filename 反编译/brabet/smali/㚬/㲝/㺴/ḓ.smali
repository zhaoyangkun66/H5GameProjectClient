.class public final L㚬/㲝/㺴/ḓ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        L㚬/㲝/㺴/ḓ$䂻;,
        L㚬/㲝/㺴/ḓ$㚬;
    }
.end annotation


# static fields
.field public static ᆻ:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "L\u36ac/\u3c9d/\u3eb4/\u1e13$\u36ac;",
            ">;"
        }
    .end annotation
.end field

.field public static final 䆀:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "L\u36ac/\u3c9d/\u3eb4/\u1e13;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public ḓ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "L\u36ac/\u3c9d/\u3eb4/\u1e13$\u36ac;",
            ">;"
        }
    .end annotation
.end field

.field public 㚬:J

.field public 㺴:J

.field public 䂻:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, L㚬/㲝/㺴/ḓ;->䆀:Ljava/lang/ThreadLocal;

    new-instance v0, L㚬/㲝/㺴/ḓ$உ;

    invoke-direct {v0}, L㚬/㲝/㺴/ḓ$உ;-><init>()V

    sput-object v0, L㚬/㲝/㺴/ḓ;->ᆻ:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, L㚬/㲝/㺴/ḓ;->䂻:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, L㚬/㲝/㺴/ḓ;->ḓ:Ljava/util/ArrayList;

    return-void
.end method

.method public static ḓ(Landroidx/recyclerview/widget/RecyclerView;I)Z
    .locals 5

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:L㚬/㲝/㺴/䂻;

    invoke-virtual {v0}, L㚬/㲝/㺴/䂻;->ಫ()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:L㚬/㲝/㺴/䂻;

    invoke-virtual {v3, v2}, L㚬/㲝/㺴/䂻;->ㄏ(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$㰫;

    move-result-object v3

    iget v4, v3, Landroidx/recyclerview/widget/RecyclerView$㰫;->㚬:I

    if-ne v4, p1, :cond_0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$㰫;->ḙ()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public run()V
    .locals 8

    const-wide/16 v0, 0x0

    :try_start_0
    const-string v2, "RV Prefetch"

    invoke-static {v2}, L㚬/ℓ/ㄏ/䂻;->உ(Ljava/lang/String;)V

    iget-object v2, p0, L㚬/㲝/㺴/ḓ;->䂻:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :goto_0
    iput-wide v0, p0, L㚬/㲝/㺴/ḓ;->㚬:J

    invoke-static {}, L㚬/ℓ/ㄏ/䂻;->䂻()V

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, L㚬/㲝/㺴/ḓ;->䂻:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move-wide v4, v0

    :goto_1
    if-ge v3, v2, :cond_2

    iget-object v6, p0, L㚬/㲝/㺴/ḓ;->䂻:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getWindowVisibility()I

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getDrawingTime()J

    move-result-wide v6

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    cmp-long v2, v4, v0

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    iget-wide v4, p0, L㚬/㲝/㺴/ḓ;->㺴:J

    add-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, L㚬/㲝/㺴/ḓ;->ᆻ(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-wide v0, p0, L㚬/㲝/㺴/ḓ;->㚬:J

    invoke-static {}, L㚬/ℓ/ㄏ/䂻;->䂻()V

    return-void

    :catchall_0
    move-exception v2

    iput-wide v0, p0, L㚬/㲝/㺴/ḓ;->㚬:J

    invoke-static {}, L㚬/ℓ/ㄏ/䂻;->䂻()V

    throw v2
.end method

.method public உ(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    iget-object v0, p0, L㚬/㲝/㺴/ḓ;->䂻:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public ಫ(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    iget-object v0, p0, L㚬/㲝/㺴/ḓ;->䂻:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public ᆻ(J)V
    .locals 0

    invoke-virtual {p0}, L㚬/㲝/㺴/ḓ;->䂻()V

    invoke-virtual {p0, p1, p2}, L㚬/㲝/㺴/ḓ;->㺴(J)V

    return-void
.end method

.method public final ℓ(Landroidx/recyclerview/widget/RecyclerView;J)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p1, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:L㚬/㲝/㺴/䂻;

    invoke-virtual {v0}, L㚬/㲝/㺴/䂻;->ಫ()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->removeAndRecycleViews()V

    :cond_1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:L㚬/㲝/㺴/ḓ$䂻;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, L㚬/㲝/㺴/ḓ$䂻;->㚬(Landroidx/recyclerview/widget/RecyclerView;Z)V

    iget v1, v0, L㚬/㲝/㺴/ḓ$䂻;->㺴:I

    if-eqz v1, :cond_3

    :try_start_0
    const-string v1, "RV Nested Prefetch"

    invoke-static {v1}, L㚬/ℓ/ㄏ/䂻;->உ(Ljava/lang/String;)V

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$ಋ;

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$ᆻ;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ಋ;->䆀(Landroidx/recyclerview/widget/RecyclerView$ᆻ;)V

    const/4 v1, 0x0

    :goto_0
    iget v2, v0, L㚬/㲝/㺴/ḓ$䂻;->㺴:I

    mul-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_2

    iget-object v2, v0, L㚬/㲝/㺴/ḓ$䂻;->㚬:[I

    aget v2, v2, v1

    invoke-virtual {p0, p1, v2, p2, p3}, L㚬/㲝/㺴/ḓ;->ㄏ(Landroidx/recyclerview/widget/RecyclerView;IJ)Landroidx/recyclerview/widget/RecyclerView$㰫;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_2
    invoke-static {}, L㚬/ℓ/ㄏ/䂻;->䂻()V

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-static {}, L㚬/ℓ/ㄏ/䂻;->䂻()V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public final ㄏ(Landroidx/recyclerview/widget/RecyclerView;IJ)Landroidx/recyclerview/widget/RecyclerView$㰫;
    .locals 2

    invoke-static {p1, p2}, L㚬/㲝/㺴/ḓ;->ḓ(Landroidx/recyclerview/widget/RecyclerView;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$㢏;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    invoke-virtual {v0, p2, v1, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$㢏;->㥁(IZJ)Landroidx/recyclerview/widget/RecyclerView$㰫;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$㰫;->㭲()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$㰫;->ḙ()Z

    move-result p3

    if-nez p3, :cond_1

    iget-object p3, p2, Landroidx/recyclerview/widget/RecyclerView$㰫;->உ:Landroid/view/View;

    invoke-virtual {v0, p3}, Landroidx/recyclerview/widget/RecyclerView$㢏;->ᾦ(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p2, v1}, Landroidx/recyclerview/widget/RecyclerView$㢏;->உ(Landroidx/recyclerview/widget/RecyclerView$㰫;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll(Z)V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll(Z)V

    throw p2
.end method

.method public final 㚬(L㚬/㲝/㺴/ḓ$㚬;J)V
    .locals 3

    iget-boolean v0, p1, L㚬/㲝/㺴/ḓ$㚬;->உ:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :cond_0
    move-wide v0, p2

    :goto_0
    iget-object v2, p1, L㚬/㲝/㺴/ḓ$㚬;->㺴:Landroidx/recyclerview/widget/RecyclerView;

    iget p1, p1, L㚬/㲝/㺴/ḓ$㚬;->ḓ:I

    invoke-virtual {p0, v2, p1, v0, v1}, L㚬/㲝/㺴/ḓ;->ㄏ(Landroidx/recyclerview/widget/RecyclerView;IJ)Landroidx/recyclerview/widget/RecyclerView$㰫;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$㰫;->䂻:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$㰫;->㭲()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$㰫;->ḙ()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$㰫;->䂻:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1, p2, p3}, L㚬/㲝/㺴/ḓ;->ℓ(Landroidx/recyclerview/widget/RecyclerView;J)V

    :cond_1
    return-void
.end method

.method public final 㺴(J)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, L㚬/㲝/㺴/ḓ;->ḓ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, L㚬/㲝/㺴/ḓ;->ḓ:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, L㚬/㲝/㺴/ḓ$㚬;

    iget-object v2, v1, L㚬/㲝/㺴/ḓ$㚬;->㺴:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1, p1, p2}, L㚬/㲝/㺴/ḓ;->㚬(L㚬/㲝/㺴/ḓ$㚬;J)V

    invoke-virtual {v1}, L㚬/㲝/㺴/ḓ$㚬;->உ()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final 䂻()V
    .locals 12

    iget-object v0, p0, L㚬/㲝/㺴/ḓ;->䂻:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v4, p0, L㚬/㲝/㺴/ḓ;->䂻:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWindowVisibility()I

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v4, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:L㚬/㲝/㺴/ḓ$䂻;

    invoke-virtual {v5, v4, v1}, L㚬/㲝/㺴/ḓ$䂻;->㚬(Landroidx/recyclerview/widget/RecyclerView;Z)V

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:L㚬/㲝/㺴/ḓ$䂻;

    iget v4, v4, L㚬/㲝/㺴/ḓ$䂻;->㺴:I

    add-int/2addr v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, L㚬/㲝/㺴/ḓ;->ḓ:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->ensureCapacity(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v2, v0, :cond_6

    iget-object v4, p0, L㚬/㲝/㺴/ḓ;->䂻:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWindowVisibility()I

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_5

    :cond_2
    iget-object v5, v4, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:L㚬/㲝/㺴/ḓ$䂻;

    iget v6, v5, L㚬/㲝/㺴/ḓ$䂻;->உ:I

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, v5, L㚬/㲝/㺴/ḓ$䂻;->䂻:I

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/2addr v6, v7

    const/4 v7, 0x0

    :goto_2
    iget v8, v5, L㚬/㲝/㺴/ḓ$䂻;->㺴:I

    mul-int/lit8 v8, v8, 0x2

    if-ge v7, v8, :cond_5

    iget-object v8, p0, L㚬/㲝/㺴/ḓ;->ḓ:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v3, v8, :cond_3

    new-instance v8, L㚬/㲝/㺴/ḓ$㚬;

    invoke-direct {v8}, L㚬/㲝/㺴/ḓ$㚬;-><init>()V

    iget-object v9, p0, L㚬/㲝/㺴/ḓ;->ḓ:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    iget-object v8, p0, L㚬/㲝/㺴/ḓ;->ḓ:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, L㚬/㲝/㺴/ḓ$㚬;

    :goto_3
    iget-object v9, v5, L㚬/㲝/㺴/ḓ$䂻;->㚬:[I

    add-int/lit8 v10, v7, 0x1

    aget v10, v9, v10

    if-gt v10, v6, :cond_4

    const/4 v11, 0x1

    goto :goto_4

    :cond_4
    const/4 v11, 0x0

    :goto_4
    iput-boolean v11, v8, L㚬/㲝/㺴/ḓ$㚬;->உ:Z

    iput v6, v8, L㚬/㲝/㺴/ḓ$㚬;->䂻:I

    iput v10, v8, L㚬/㲝/㺴/ḓ$㚬;->㚬:I

    iput-object v4, v8, L㚬/㲝/㺴/ḓ$㚬;->㺴:Landroidx/recyclerview/widget/RecyclerView;

    aget v9, v9, v7

    iput v9, v8, L㚬/㲝/㺴/ḓ$㚬;->ḓ:I

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v7, v7, 0x2

    goto :goto_2

    :cond_5
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    iget-object v0, p0, L㚬/㲝/㺴/ḓ;->ḓ:Ljava/util/ArrayList;

    sget-object v1, L㚬/㲝/㺴/ḓ;->ᆻ:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public 䆀(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 5

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, L㚬/㲝/㺴/ḓ;->㚬:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v0

    iput-wide v0, p0, L㚬/㲝/㺴/ḓ;->㚬:J

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:L㚬/㲝/㺴/ḓ$䂻;

    invoke-virtual {p1, p2, p3}, L㚬/㲝/㺴/ḓ$䂻;->ḓ(II)V

    return-void
.end method
