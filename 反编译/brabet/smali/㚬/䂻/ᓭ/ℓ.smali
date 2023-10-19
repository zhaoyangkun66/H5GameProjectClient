.class public L㚬/䂻/ᓭ/ℓ;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final உ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "L\u36ac/\u2113/\u1f25/\u0e21;",
            ">;"
        }
    .end annotation
.end field

.field public ḓ:Z

.field public 㚬:Landroid/view/animation/Interpolator;

.field public 㺴:L㚬/ℓ/ἥ/㲧;

.field public 䂻:J

.field public final 䆀:L㚬/ℓ/ἥ/ㄬ;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, L㚬/䂻/ᓭ/ℓ;->䂻:J

    new-instance v0, L㚬/䂻/ᓭ/ℓ$உ;

    invoke-direct {v0, p0}, L㚬/䂻/ᓭ/ℓ$உ;-><init>(L㚬/䂻/ᓭ/ℓ;)V

    iput-object v0, p0, L㚬/䂻/ᓭ/ℓ;->䆀:L㚬/ℓ/ἥ/ㄬ;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, L㚬/䂻/ᓭ/ℓ;->உ:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public உ()V
    .locals 2

    iget-boolean v0, p0, L㚬/䂻/ᓭ/ℓ;->ḓ:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, L㚬/䂻/ᓭ/ℓ;->உ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, L㚬/ℓ/ἥ/ม;

    invoke-virtual {v1}, L㚬/ℓ/ἥ/ม;->䂻()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, L㚬/䂻/ᓭ/ℓ;->ḓ:Z

    return-void
.end method

.method public ᆻ(L㚬/ℓ/ἥ/㲧;)L㚬/䂻/ᓭ/ℓ;
    .locals 1

    iget-boolean v0, p0, L㚬/䂻/ᓭ/ℓ;->ḓ:Z

    if-nez v0, :cond_0

    iput-object p1, p0, L㚬/䂻/ᓭ/ℓ;->㺴:L㚬/ℓ/ἥ/㲧;

    :cond_0
    return-object p0
.end method

.method public ḓ(J)L㚬/䂻/ᓭ/ℓ;
    .locals 1

    iget-boolean v0, p0, L㚬/䂻/ᓭ/ℓ;->ḓ:Z

    if-nez v0, :cond_0

    iput-wide p1, p0, L㚬/䂻/ᓭ/ℓ;->䂻:J

    :cond_0
    return-object p0
.end method

.method public ℓ()V
    .locals 7

    iget-boolean v0, p0, L㚬/䂻/ᓭ/ℓ;->ḓ:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, L㚬/䂻/ᓭ/ℓ;->உ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, L㚬/ℓ/ἥ/ม;

    iget-wide v2, p0, L㚬/䂻/ᓭ/ℓ;->䂻:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_1

    invoke-virtual {v1, v2, v3}, L㚬/ℓ/ἥ/ม;->㺴(J)L㚬/ℓ/ἥ/ม;

    :cond_1
    iget-object v2, p0, L㚬/䂻/ᓭ/ℓ;->㚬:Landroid/view/animation/Interpolator;

    if-eqz v2, :cond_2

    invoke-virtual {v1, v2}, L㚬/ℓ/ἥ/ม;->ḓ(Landroid/view/animation/Interpolator;)L㚬/ℓ/ἥ/ม;

    :cond_2
    iget-object v2, p0, L㚬/䂻/ᓭ/ℓ;->㺴:L㚬/ℓ/ἥ/㲧;

    if-eqz v2, :cond_3

    iget-object v2, p0, L㚬/䂻/ᓭ/ℓ;->䆀:L㚬/ℓ/ἥ/ㄬ;

    invoke-virtual {v1, v2}, L㚬/ℓ/ἥ/ม;->䆀(L㚬/ℓ/ἥ/㲧;)L㚬/ℓ/ἥ/ม;

    :cond_3
    invoke-virtual {v1}, L㚬/ℓ/ἥ/ม;->ಫ()V

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, L㚬/䂻/ᓭ/ℓ;->ḓ:Z

    return-void
.end method

.method public 㚬(L㚬/ℓ/ἥ/ม;)L㚬/䂻/ᓭ/ℓ;
    .locals 1

    iget-boolean v0, p0, L㚬/䂻/ᓭ/ℓ;->ḓ:Z

    if-nez v0, :cond_0

    iget-object v0, p0, L㚬/䂻/ᓭ/ℓ;->உ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public 㺴(L㚬/ℓ/ἥ/ม;L㚬/ℓ/ἥ/ม;)L㚬/䂻/ᓭ/ℓ;
    .locals 2

    iget-object v0, p0, L㚬/䂻/ᓭ/ℓ;->உ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, L㚬/ℓ/ἥ/ม;->㚬()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, L㚬/ℓ/ἥ/ม;->ℓ(J)L㚬/ℓ/ἥ/ม;

    iget-object p1, p0, L㚬/䂻/ᓭ/ℓ;->உ:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public 䂻()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, L㚬/䂻/ᓭ/ℓ;->ḓ:Z

    return-void
.end method

.method public 䆀(Landroid/view/animation/Interpolator;)L㚬/䂻/ᓭ/ℓ;
    .locals 1

    iget-boolean v0, p0, L㚬/䂻/ᓭ/ℓ;->ḓ:Z

    if-nez v0, :cond_0

    iput-object p1, p0, L㚬/䂻/ᓭ/ℓ;->㚬:Landroid/view/animation/Interpolator;

    :cond_0
    return-object p0
.end method
