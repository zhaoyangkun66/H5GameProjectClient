.class public Landroidx/recyclerview/widget/RecyclerView$ბ;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u10d1"
.end annotation


# instance fields
.field public உ:Landroidx/recyclerview/widget/RecyclerView$㰫;

.field public 㚬:Z

.field public 㺴:Z

.field public final 䂻:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ბ;->䂻:Landroid/graphics/Rect;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$ბ;->㚬:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$ბ;->㺴:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ბ;->䂻:Landroid/graphics/Rect;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$ბ;->㚬:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$ბ;->㺴:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ბ;->䂻:Landroid/graphics/Rect;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$ბ;->㚬:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$ბ;->㺴:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ბ;->䂻:Landroid/graphics/Rect;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$ბ;->㚬:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$ბ;->㺴:Z

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$ბ;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ბ;->䂻:Landroid/graphics/Rect;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$ბ;->㚬:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$ბ;->㺴:Z

    return-void
.end method


# virtual methods
.method public உ()I
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ბ;->உ:Landroidx/recyclerview/widget/RecyclerView$㰫;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$㰫;->ἥ()I

    move-result v0

    return v0
.end method

.method public 㚬()Z
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ბ;->உ:Landroidx/recyclerview/widget/RecyclerView$㰫;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$㰫;->㢏()Z

    move-result v0

    return v0
.end method

.method public 㺴()Z
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ბ;->உ:Landroidx/recyclerview/widget/RecyclerView$㰫;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$㰫;->ḙ()Z

    move-result v0

    return v0
.end method

.method public 䂻()Z
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ბ;->உ:Landroidx/recyclerview/widget/RecyclerView$㰫;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$㰫;->ㄬ()Z

    move-result v0

    return v0
.end method
