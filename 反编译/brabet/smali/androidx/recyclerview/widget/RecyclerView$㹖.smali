.class public abstract Landroidx/recyclerview/widget/RecyclerView$㹖;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "\u3e56"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;,
        Landroidx/recyclerview/widget/RecyclerView$㹖$உ;,
        Landroidx/recyclerview/widget/RecyclerView$㹖$䂻;
    }
.end annotation


# instance fields
.field public உ:Landroidx/recyclerview/widget/RecyclerView$㹖$䂻;

.field public ḓ:J

.field public 㚬:J

.field public 㺴:J

.field public 䂻:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$\u3e56$\u0b89;",
            ">;"
        }
    .end annotation
.end field

.field public 䆀:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㹖;->உ:Landroidx/recyclerview/widget/RecyclerView$㹖$䂻;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㹖;->䂻:Ljava/util/ArrayList;

    const-wide/16 v0, 0x78

    iput-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$㹖;->㚬:J

    iput-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$㹖;->㺴:J

    const-wide/16 v0, 0xfa

    iput-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$㹖;->ḓ:J

    iput-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$㹖;->䆀:J

    return-void
.end method

.method public static ḓ(Landroidx/recyclerview/widget/RecyclerView$㰫;)I
    .locals 3

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->ಫ:I

    and-int/lit8 v0, v0, 0xe

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$㰫;->ḙ()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$㰫;->ཇ()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$㰫;->ಫ()I

    move-result p0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-eq p0, v2, :cond_1

    if-eq v1, p0, :cond_1

    or-int/lit16 v0, v0, 0x800

    :cond_1
    return v0
.end method


# virtual methods
.method public abstract உ(Landroidx/recyclerview/widget/RecyclerView$㰫;Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;)Z
.end method

.method public abstract ಫ(Landroidx/recyclerview/widget/RecyclerView$㰫;)V
.end method

.method public ཇ()J
    .locals 2

    iget-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$㹖;->ḓ:J

    return-wide v0
.end method

.method public abstract ბ()Z
.end method

.method public ᆻ(Landroidx/recyclerview/widget/RecyclerView$㰫;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$\u3c2b;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$㹖;->䆀(Landroidx/recyclerview/widget/RecyclerView$㰫;)Z

    move-result p1

    return p1
.end method

.method public ᓭ()J
    .locals 2

    iget-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$㹖;->㺴:J

    return-wide v0
.end method

.method public ḙ(Landroidx/recyclerview/widget/RecyclerView$ಋ;Landroidx/recyclerview/widget/RecyclerView$㰫;ILjava/util/List;)Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$\u0c8b;",
            "Landroidx/recyclerview/widget/RecyclerView$\u3c2b;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Landroidx/recyclerview/widget/RecyclerView$\u3e56$\u36ac;"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$㹖;->㲝()Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;->உ(Landroidx/recyclerview/widget/RecyclerView$㰫;)Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;

    return-object p1
.end method

.method public ἥ()J
    .locals 2

    iget-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$㹖;->䆀:J

    return-wide v0
.end method

.method public final ℓ(Landroidx/recyclerview/widget/RecyclerView$㰫;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$㹖;->㞘(Landroidx/recyclerview/widget/RecyclerView$㰫;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㹖;->உ:Landroidx/recyclerview/widget/RecyclerView$㹖$䂻;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$㹖$䂻;->உ(Landroidx/recyclerview/widget/RecyclerView$㰫;)V

    :cond_0
    return-void
.end method

.method public final ㄏ()V
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㹖;->䂻:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$㹖;->䂻:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$㹖$உ;

    invoke-interface {v2}, Landroidx/recyclerview/widget/RecyclerView$㹖$உ;->உ()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㹖;->䂻:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public abstract 㖪()V
.end method

.method public abstract 㚬(Landroidx/recyclerview/widget/RecyclerView$㰫;Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;)Z
.end method

.method public 㞘(Landroidx/recyclerview/widget/RecyclerView$㰫;)V
    .locals 0

    return-void
.end method

.method public 㢏(Landroidx/recyclerview/widget/RecyclerView$㹖$䂻;)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$㹖;->உ:Landroidx/recyclerview/widget/RecyclerView$㹖$䂻;

    return-void
.end method

.method public abstract 㧦()V
.end method

.method public 㭲(Landroidx/recyclerview/widget/RecyclerView$ಋ;Landroidx/recyclerview/widget/RecyclerView$㰫;)Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$㹖;->㲝()Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;->உ(Landroidx/recyclerview/widget/RecyclerView$㰫;)Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;

    return-object p1
.end method

.method public 㲝()Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;
    .locals 1

    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;-><init>()V

    return-object v0
.end method

.method public 㹖()J
    .locals 2

    iget-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$㹖;->㚬:J

    return-wide v0
.end method

.method public abstract 㺴(Landroidx/recyclerview/widget/RecyclerView$㰫;Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;)Z
.end method

.method public abstract 䂻(Landroidx/recyclerview/widget/RecyclerView$㰫;Landroidx/recyclerview/widget/RecyclerView$㰫;Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;Landroidx/recyclerview/widget/RecyclerView$㹖$㚬;)Z
.end method

.method public abstract 䆀(Landroidx/recyclerview/widget/RecyclerView$㰫;)Z
.end method
