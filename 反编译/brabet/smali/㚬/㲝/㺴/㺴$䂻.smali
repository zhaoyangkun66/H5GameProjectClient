.class public L㚬/㲝/㺴/㺴$䂻;
.super Landroidx/recyclerview/widget/RecyclerView$ḙ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/㲝/㺴/㺴;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic உ:L㚬/㲝/㺴/㺴;


# direct methods
.method public constructor <init>(L㚬/㲝/㺴/㺴;)V
    .locals 0

    iput-object p1, p0, L㚬/㲝/㺴/㺴$䂻;->உ:L㚬/㲝/㺴/㺴;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ḙ;-><init>()V

    return-void
.end method


# virtual methods
.method public 䂻(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    iget-object p2, p0, L㚬/㲝/㺴/㺴$䂻;->உ:L㚬/㲝/㺴/㺴;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result p3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p1

    invoke-virtual {p2, p3, p1}, L㚬/㲝/㺴/㺴;->ᾦ(II)V

    return-void
.end method
