.class public abstract L㚬/㲝/㺴/ಫ;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final உ:Landroidx/recyclerview/widget/RecyclerView$ᓭ;

.field public final 㚬:Landroid/graphics/Rect;

.field public 䂻:I


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$ᓭ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, L㚬/㲝/㺴/ಫ;->䂻:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, L㚬/㲝/㺴/ಫ;->㚬:Landroid/graphics/Rect;

    iput-object p1, p0, L㚬/㲝/㺴/ಫ;->உ:Landroidx/recyclerview/widget/RecyclerView$ᓭ;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView$ᓭ;L㚬/㲝/㺴/ಫ$உ;)V
    .locals 0

    invoke-direct {p0, p1}, L㚬/㲝/㺴/ಫ;-><init>(Landroidx/recyclerview/widget/RecyclerView$ᓭ;)V

    return-void
.end method

.method public static உ(Landroidx/recyclerview/widget/RecyclerView$ᓭ;)L㚬/㲝/㺴/ಫ;
    .locals 1

    new-instance v0, L㚬/㲝/㺴/ಫ$உ;

    invoke-direct {v0, p0}, L㚬/㲝/㺴/ಫ$உ;-><init>(Landroidx/recyclerview/widget/RecyclerView$ᓭ;)V

    return-object v0
.end method

.method public static 㚬(Landroidx/recyclerview/widget/RecyclerView$ᓭ;)L㚬/㲝/㺴/ಫ;
    .locals 1

    new-instance v0, L㚬/㲝/㺴/ಫ$䂻;

    invoke-direct {v0, p0}, L㚬/㲝/㺴/ಫ$䂻;-><init>(Landroidx/recyclerview/widget/RecyclerView$ᓭ;)V

    return-object v0
.end method

.method public static 䂻(Landroidx/recyclerview/widget/RecyclerView$ᓭ;I)L㚬/㲝/㺴/ಫ;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-static {p0}, L㚬/㲝/㺴/ಫ;->㚬(Landroidx/recyclerview/widget/RecyclerView$ᓭ;)L㚬/㲝/㺴/ಫ;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid orientation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p0}, L㚬/㲝/㺴/ಫ;->உ(Landroidx/recyclerview/widget/RecyclerView$ᓭ;)L㚬/㲝/㺴/ಫ;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract ಫ()I
.end method

.method public abstract ཇ()I
.end method

.method public abstract ბ(Landroid/view/View;)I
.end method

.method public abstract ᆻ(Landroid/view/View;)I
.end method

.method public ᓭ()I
    .locals 2

    iget v0, p0, L㚬/㲝/㺴/ಫ;->䂻:I

    const/high16 v1, -0x80000000

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, L㚬/㲝/㺴/ಫ;->ཇ()I

    move-result v0

    iget v1, p0, L㚬/㲝/㺴/ಫ;->䂻:I

    sub-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public abstract ḓ(Landroid/view/View;)I
.end method

.method public abstract ἥ()I
.end method

.method public abstract ℓ()I
.end method

.method public abstract ㄏ()I
.end method

.method public abstract 㞘(I)V
.end method

.method public abstract 㧦()I
.end method

.method public 㭲()V
    .locals 1

    invoke-virtual {p0}, L㚬/㲝/㺴/ಫ;->ཇ()I

    move-result v0

    iput v0, p0, L㚬/㲝/㺴/ಫ;->䂻:I

    return-void
.end method

.method public abstract 㲝(Landroid/view/View;)I
.end method

.method public abstract 㹖()I
.end method

.method public abstract 㺴(Landroid/view/View;)I
.end method

.method public abstract 䆀(Landroid/view/View;)I
.end method
