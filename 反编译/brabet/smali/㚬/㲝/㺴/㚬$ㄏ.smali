.class public L㚬/㲝/㺴/㚬$ㄏ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/㲝/㺴/㚬;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u310f"
.end annotation


# instance fields
.field public உ:Landroidx/recyclerview/widget/RecyclerView$㰫;

.field public ḓ:I

.field public 㚬:I

.field public 㺴:I

.field public 䂻:Landroidx/recyclerview/widget/RecyclerView$㰫;

.field public 䆀:I


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$㰫;Landroidx/recyclerview/widget/RecyclerView$㰫;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㚬/㲝/㺴/㚬$ㄏ;->உ:Landroidx/recyclerview/widget/RecyclerView$㰫;

    iput-object p2, p0, L㚬/㲝/㺴/㚬$ㄏ;->䂻:Landroidx/recyclerview/widget/RecyclerView$㰫;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$㰫;Landroidx/recyclerview/widget/RecyclerView$㰫;IIII)V
    .locals 0

    invoke-direct {p0, p1, p2}, L㚬/㲝/㺴/㚬$ㄏ;-><init>(Landroidx/recyclerview/widget/RecyclerView$㰫;Landroidx/recyclerview/widget/RecyclerView$㰫;)V

    iput p3, p0, L㚬/㲝/㺴/㚬$ㄏ;->㚬:I

    iput p4, p0, L㚬/㲝/㺴/㚬$ㄏ;->㺴:I

    iput p5, p0, L㚬/㲝/㺴/㚬$ㄏ;->ḓ:I

    iput p6, p0, L㚬/㲝/㺴/㚬$ㄏ;->䆀:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChangeInfo{oldHolder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, L㚬/㲝/㺴/㚬$ㄏ;->உ:Landroidx/recyclerview/widget/RecyclerView$㰫;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", newHolder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, L㚬/㲝/㺴/㚬$ㄏ;->䂻:Landroidx/recyclerview/widget/RecyclerView$㰫;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fromX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, L㚬/㲝/㺴/㚬$ㄏ;->㚬:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fromY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, L㚬/㲝/㺴/㚬$ㄏ;->㺴:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", toX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, L㚬/㲝/㺴/㚬$ㄏ;->ḓ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", toY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, L㚬/㲝/㺴/㚬$ㄏ;->䆀:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
