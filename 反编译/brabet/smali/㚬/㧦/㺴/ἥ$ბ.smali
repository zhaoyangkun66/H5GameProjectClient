.class public L㚬/㧦/㺴/ἥ$ბ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements L㚬/㧦/㺴/ἥ$ᓭ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/㧦/㺴/ἥ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "\u10d1"
.end annotation


# instance fields
.field public final உ:Ljava/lang/String;

.field public final 㚬:I

.field public final synthetic 㺴:L㚬/㧦/㺴/ἥ;

.field public final 䂻:I


# direct methods
.method public constructor <init>(L㚬/㧦/㺴/ἥ;Ljava/lang/String;II)V
    .locals 0

    iput-object p1, p0, L㚬/㧦/㺴/ἥ$ბ;->㺴:L㚬/㧦/㺴/ἥ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, L㚬/㧦/㺴/ἥ$ბ;->உ:Ljava/lang/String;

    iput p3, p0, L㚬/㧦/㺴/ἥ$ბ;->䂻:I

    iput p4, p0, L㚬/㧦/㺴/ἥ$ბ;->㚬:I

    return-void
.end method


# virtual methods
.method public உ(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "L\u36ac/\u39e6/\u3eb4/\u0b89;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, L㚬/㧦/㺴/ἥ$ბ;->㺴:L㚬/㧦/㺴/ἥ;

    iget-object v0, v0, L㚬/㧦/㺴/ἥ;->㖪:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    iget v1, p0, L㚬/㧦/㺴/ἥ$ბ;->䂻:I

    if-gez v1, :cond_0

    iget-object v1, p0, L㚬/㧦/㺴/ἥ$ბ;->உ:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()L㚬/㧦/㺴/ἥ;

    move-result-object v0

    invoke-virtual {v0}, L㚬/㧦/㺴/ἥ;->ၶ()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, L㚬/㧦/㺴/ἥ$ბ;->㺴:L㚬/㧦/㺴/ἥ;

    iget-object v3, p0, L㚬/㧦/㺴/ἥ$ბ;->உ:Ljava/lang/String;

    iget v4, p0, L㚬/㧦/㺴/ἥ$ბ;->䂻:I

    iget v5, p0, L㚬/㧦/㺴/ἥ$ბ;->㚬:I

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, L㚬/㧦/㺴/ἥ;->㲶(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result p1

    return p1
.end method
