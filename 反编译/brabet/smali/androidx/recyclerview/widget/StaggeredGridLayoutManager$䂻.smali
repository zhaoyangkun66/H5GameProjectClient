.class public Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "\u40bb"
.end annotation


# instance fields
.field public உ:I

.field public final synthetic ᆻ:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

.field public ḓ:Z

.field public 㚬:Z

.field public 㺴:Z

.field public 䂻:I

.field public 䆀:[I


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;->ᆻ:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;->㚬()V

    return-void
.end method


# virtual methods
.method public உ()V
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;->㚬:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;->ᆻ:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v0}, L㚬/㲝/㺴/ಫ;->ㄏ()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;->ᆻ:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v0}, L㚬/㲝/㺴/ಫ;->ἥ()I

    move-result v0

    :goto_0
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;->䂻:I

    return-void
.end method

.method public 㚬()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;->உ:I

    const/high16 v1, -0x80000000

    iput v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;->䂻:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;->㚬:Z

    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;->㺴:Z

    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;->ḓ:Z

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;->䆀:[I

    if-eqz v1, :cond_0

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    :cond_0
    return-void
.end method

.method public 㺴([Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;)V
    .locals 5

    array-length v0, p1

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;->䆀:[I

    if-eqz v1, :cond_0

    array-length v1, v1

    if-ge v1, v0, :cond_1

    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;->ᆻ:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ḙ:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;->䆀:[I

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;->䆀:[I

    aget-object v3, p1, v1

    const/high16 v4, -0x80000000

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䆀;->ბ(I)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public 䂻(I)V
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;->㚬:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;->ᆻ:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v0}, L㚬/㲝/㺴/ಫ;->ㄏ()I

    move-result v0

    sub-int/2addr v0, p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;->ᆻ:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->㖪:L㚬/㲝/㺴/ಫ;

    invoke-virtual {v0}, L㚬/㲝/㺴/ಫ;->ἥ()I

    move-result v0

    add-int/2addr v0, p1

    :goto_0
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$䂻;->䂻:I

    return-void
.end method
