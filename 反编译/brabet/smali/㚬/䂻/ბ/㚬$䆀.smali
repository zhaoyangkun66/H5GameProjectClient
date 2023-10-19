.class public L㚬/䂻/ბ/㚬$䆀;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements L㚬/䂻/ᓭ/ಫ/ἥ$உ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/䂻/ბ/㚬;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "\u4180"
.end annotation


# instance fields
.field public final synthetic 䂻:L㚬/䂻/ბ/㚬;


# direct methods
.method public constructor <init>(L㚬/䂻/ბ/㚬;)V
    .locals 0

    iput-object p1, p0, L㚬/䂻/ბ/㚬$䆀;->䂻:L㚬/䂻/ბ/㚬;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public உ(L㚬/䂻/ᓭ/ಫ/ᆻ;Z)V
    .locals 2

    instance-of v0, p1, L㚬/䂻/ᓭ/ಫ/㞘;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㰫()L㚬/䂻/ᓭ/ಫ/ᆻ;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ḓ(Z)V

    :cond_0
    iget-object v0, p0, L㚬/䂻/ბ/㚬$䆀;->䂻:L㚬/䂻/ბ/㚬;

    invoke-virtual {v0}, L㚬/䂻/ᓭ/ಫ/䂻;->ἥ()L㚬/䂻/ᓭ/ಫ/ἥ$உ;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, L㚬/䂻/ᓭ/ಫ/ἥ$உ;->உ(L㚬/䂻/ᓭ/ಫ/ᆻ;Z)V

    :cond_1
    return-void
.end method

.method public 䂻(L㚬/䂻/ᓭ/ಫ/ᆻ;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, L㚬/䂻/ბ/㚬$䆀;->䂻:L㚬/䂻/ბ/㚬;

    move-object v2, p1

    check-cast v2, L㚬/䂻/ᓭ/ಫ/㞘;

    invoke-virtual {v2}, L㚬/䂻/ᓭ/ಫ/㞘;->getItem()Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    iput v2, v1, L㚬/䂻/ბ/㚬;->ڈ:I

    iget-object v1, p0, L㚬/䂻/ბ/㚬$䆀;->䂻:L㚬/䂻/ბ/㚬;

    invoke-virtual {v1}, L㚬/䂻/ᓭ/ಫ/䂻;->ἥ()L㚬/䂻/ᓭ/ಫ/ἥ$உ;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, L㚬/䂻/ᓭ/ಫ/ἥ$உ;->䂻(L㚬/䂻/ᓭ/ಫ/ᆻ;)Z

    move-result v0

    :cond_1
    return v0
.end method
