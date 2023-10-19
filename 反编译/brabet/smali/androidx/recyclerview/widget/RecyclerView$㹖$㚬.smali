.class public Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView$㹖;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u36ac"
.end annotation


# instance fields
.field public உ:I

.field public 䂻:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public உ(Landroidx/recyclerview/widget/RecyclerView$㰫;)Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;->䂻(Landroidx/recyclerview/widget/RecyclerView$㰫;I)Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;

    return-object p0
.end method

.method public 䂻(Landroidx/recyclerview/widget/RecyclerView$㰫;I)Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;
    .locals 0

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$㰫;->உ:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    iput p2, p0, Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;->உ:I

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    iput p2, p0, Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;->䂻:I

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    return-object p0
.end method
