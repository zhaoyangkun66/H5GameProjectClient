.class public L㚬/㲝/㺴/ཇ$உ;
.super Landroidx/recyclerview/widget/RecyclerView$ḙ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/㲝/㺴/ཇ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public உ:Z

.field public final synthetic 䂻:L㚬/㲝/㺴/ཇ;


# direct methods
.method public constructor <init>(L㚬/㲝/㺴/ཇ;)V
    .locals 0

    iput-object p1, p0, L㚬/㲝/㺴/ཇ$உ;->䂻:L㚬/㲝/㺴/ཇ;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ḙ;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, L㚬/㲝/㺴/ཇ$உ;->உ:Z

    return-void
.end method


# virtual methods
.method public உ(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$ḙ;->உ(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_0

    iget-boolean p1, p0, L㚬/㲝/㺴/ཇ$உ;->உ:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, L㚬/㲝/㺴/ཇ$உ;->உ:Z

    iget-object p1, p0, L㚬/㲝/㺴/ཇ$உ;->䂻:L㚬/㲝/㺴/ཇ;

    invoke-virtual {p1}, L㚬/㲝/㺴/ཇ;->㹖()V

    :cond_0
    return-void
.end method

.method public 䂻(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, L㚬/㲝/㺴/ཇ$உ;->உ:Z

    :cond_1
    return-void
.end method
