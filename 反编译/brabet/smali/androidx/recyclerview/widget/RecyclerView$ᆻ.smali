.class public abstract Landroidx/recyclerview/widget/RecyclerView$ᆻ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "\u11bb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroidx/recyclerview/widget/RecyclerView$\u3c2b;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final உ:Landroidx/recyclerview/widget/RecyclerView$ℓ;

.field public 䂻:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$ℓ;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$ℓ;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ᆻ;->உ:Landroidx/recyclerview/widget/RecyclerView$ℓ;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$ᆻ;->䂻:Z

    return-void
.end method


# virtual methods
.method public final உ(Landroidx/recyclerview/widget/RecyclerView$㰫;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    iput p2, p1, Landroidx/recyclerview/widget/RecyclerView$㰫;->㚬:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᆻ;->ᆻ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ᆻ;->㺴(I)J

    move-result-wide v0

    iput-wide v0, p1, Landroidx/recyclerview/widget/RecyclerView$㰫;->ḓ:J

    :cond_0
    const/16 v0, 0x207

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$㰫;->㨃(II)V

    const-string v0, "RV OnBindView"

    invoke-static {v0}, L㚬/ℓ/ㄏ/䂻;->உ(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$㰫;->ᓭ()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$ᆻ;->㧦(Landroidx/recyclerview/widget/RecyclerView$㰫;ILjava/util/List;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$㰫;->㺴()V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$㰫;->உ:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p2, p1, Landroidx/recyclerview/widget/RecyclerView$ბ;

    if-eqz p2, :cond_1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ბ;

    iput-boolean v1, p1, Landroidx/recyclerview/widget/RecyclerView$ბ;->㚬:Z

    :cond_1
    invoke-static {}, L㚬/ℓ/ㄏ/䂻;->䂻()V

    return-void
.end method

.method public abstract ಫ(Landroidx/recyclerview/widget/RecyclerView$㰫;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation
.end method

.method public ཇ(Landroidx/recyclerview/widget/RecyclerView$㰫;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public ბ(Landroidx/recyclerview/widget/RecyclerView$㰫;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    return-void
.end method

.method public final ᆻ()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$ᆻ;->䂻:Z

    return v0
.end method

.method public ᓭ(Landroidx/recyclerview/widget/RecyclerView$㰫;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    return-void
.end method

.method public ḓ(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public ḙ(Landroidx/recyclerview/widget/RecyclerView$ㄏ;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ᆻ;->உ:Landroidx/recyclerview/widget/RecyclerView$ℓ;

    invoke-virtual {v0, p1}, Landroid/database/Observable;->unregisterObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public ἥ(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method public final ℓ()V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ᆻ;->உ:Landroidx/recyclerview/widget/RecyclerView$ℓ;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ℓ;->䂻()V

    return-void
.end method

.method public ㄏ(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method public abstract 㚬()I
.end method

.method public 㞘(Landroidx/recyclerview/widget/RecyclerView$ㄏ;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ᆻ;->உ:Landroidx/recyclerview/widget/RecyclerView$ℓ;

    invoke-virtual {v0, p1}, Landroid/database/Observable;->registerObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public 㧦(Landroidx/recyclerview/widget/RecyclerView$㰫;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$ᆻ;->ಫ(Landroidx/recyclerview/widget/RecyclerView$㰫;I)V

    return-void
.end method

.method public 㭲(Z)V
    .locals 1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ᆻ;->䆀()Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$ᆻ;->䂻:Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot change whether this adapter has stable IDs while the adapter has registered observers."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public 㲝(Landroidx/recyclerview/widget/RecyclerView$㰫;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    return-void
.end method

.method public abstract 㹖(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$㰫;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method

.method public 㺴(I)J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final 䂻(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$㰫;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    :try_start_0
    const-string v0, "RV CreateView"

    invoke-static {v0}, L㚬/ℓ/ㄏ/䂻;->உ(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$ᆻ;->㹖(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$㰫;

    move-result-object p1

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$㰫;->உ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    iput p2, p1, Landroidx/recyclerview/widget/RecyclerView$㰫;->䆀:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, L㚬/ℓ/ㄏ/䂻;->䂻()V

    return-object p1

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ViewHolder views must not be attached when created. Ensure that you are not passing \'true\' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    invoke-static {}, L㚬/ℓ/ㄏ/䂻;->䂻()V

    throw p1
.end method

.method public final 䆀()Z
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ᆻ;->உ:Landroidx/recyclerview/widget/RecyclerView$ℓ;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ℓ;->உ()Z

    move-result v0

    return v0
.end method
