.class public L㚬/ḙ/ḓ$䂻;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements L㚬/ḙ/ἥ$䆀;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L㚬/ḙ/ḓ;->㞘(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic உ:Landroid/view/View;

.field public final synthetic 䂻:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(L㚬/ḙ/ḓ;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p2, p0, L㚬/ḙ/ḓ$䂻;->உ:Landroid/view/View;

    iput-object p3, p0, L㚬/ḙ/ḓ$䂻;->䂻:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public உ(L㚬/ḙ/ἥ;)V
    .locals 0

    return-void
.end method

.method public ḓ(L㚬/ḙ/ἥ;)V
    .locals 3

    invoke-virtual {p1, p0}, L㚬/ḙ/ἥ;->䅚(L㚬/ḙ/ἥ$䆀;)L㚬/ḙ/ἥ;

    iget-object p1, p0, L㚬/ḙ/ḓ$䂻;->உ:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, L㚬/ḙ/ḓ$䂻;->䂻:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    iget-object v2, p0, L㚬/ḙ/ḓ$䂻;->䂻:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public 㚬(L㚬/ḙ/ἥ;)V
    .locals 0

    return-void
.end method

.method public 㺴(L㚬/ḙ/ἥ;)V
    .locals 0

    return-void
.end method

.method public 䂻(L㚬/ḙ/ἥ;)V
    .locals 0

    return-void
.end method
