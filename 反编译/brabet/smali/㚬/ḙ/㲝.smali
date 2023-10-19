.class public L㚬/ḙ/㲝;
.super L㚬/ḙ/ἥ;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        L㚬/ḙ/㲝$䂻;
    }
.end annotation


# instance fields
.field public Ԁ:Z

.field public Խ:I

.field public ỷ:I

.field public 㖆:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "L\u36ac/\u1e19/\u1f25;",
            ">;"
        }
    .end annotation
.end field

.field public 㭢:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, L㚬/ḙ/ἥ;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, L㚬/ḙ/㲝;->㖆:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, L㚬/ḙ/㲝;->㭢:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, L㚬/ḙ/㲝;->Ԁ:Z

    iput v0, p0, L㚬/ḙ/㲝;->ỷ:I

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, L㚬/ḙ/㲝;->ἥ()L㚬/ḙ/ἥ;

    move-result-object v0

    return-object v0
.end method

.method public Ԁ(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, L㚬/ḙ/ἥ;->Ԁ(Landroid/view/View;)V

    iget-object v0, p0, L㚬/ḙ/㲝;->㖆:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, L㚬/ḙ/㲝;->㖆:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, L㚬/ḙ/ἥ;

    invoke-virtual {v2, p1}, L㚬/ḙ/ἥ;->Ԁ(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public क(Landroid/animation/TimeInterpolator;)L㚬/ḙ/㲝;
    .locals 3

    iget v0, p0, L㚬/ḙ/㲝;->ỷ:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, L㚬/ḙ/㲝;->ỷ:I

    iget-object v0, p0, L㚬/ḙ/㲝;->㖆:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, L㚬/ḙ/㲝;->㖆:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, L㚬/ḙ/ἥ;

    invoke-virtual {v2, p1}, L㚬/ḙ/ἥ;->ᇿ(Landroid/animation/TimeInterpolator;)L㚬/ḙ/ἥ;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, L㚬/ḙ/ἥ;->ᇿ(Landroid/animation/TimeInterpolator;)L㚬/ḙ/ἥ;

    move-object p1, p0

    check-cast p1, L㚬/ḙ/㲝;

    return-object p1
.end method

.method public bridge synthetic உ(L㚬/ḙ/ἥ$䆀;)L㚬/ḙ/ἥ;
    .locals 0

    invoke-virtual {p0, p1}, L㚬/ḙ/㲝;->ಇ(L㚬/ḙ/ἥ$䆀;)L㚬/ḙ/㲝;

    move-result-object p1

    return-object p1
.end method

.method public ಇ(L㚬/ḙ/ἥ$䆀;)L㚬/ḙ/㲝;
    .locals 0

    invoke-super {p0, p1}, L㚬/ḙ/ἥ;->உ(L㚬/ḙ/ἥ$䆀;)L㚬/ḙ/ἥ;

    move-object p1, p0

    check-cast p1, L㚬/ḙ/㲝;

    return-object p1
.end method

.method public ಫ(L㚬/ḙ/㭲;)V
    .locals 3

    iget-object v0, p1, L㚬/ḙ/㭲;->䂻:Landroid/view/View;

    invoke-virtual {p0, v0}, L㚬/ḙ/ἥ;->ᰘ(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, L㚬/ḙ/㲝;->㖆:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, L㚬/ḙ/ἥ;

    iget-object v2, p1, L㚬/ḙ/㭲;->䂻:Landroid/view/View;

    invoke-virtual {v1, v2}, L㚬/ḙ/ἥ;->ᰘ(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, L㚬/ḙ/ἥ;->ಫ(L㚬/ḙ/㭲;)V

    iget-object v2, p1, L㚬/ḙ/㭲;->㚬:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public ග(L㚬/ḙ/ἥ;)L㚬/ḙ/㲝;
    .locals 5

    invoke-virtual {p0, p1}, L㚬/ḙ/㲝;->Ᏼ(L㚬/ḙ/ἥ;)V

    iget-wide v0, p0, L㚬/ḙ/ἥ;->㺴:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    invoke-virtual {p1, v0, v1}, L㚬/ḙ/ἥ;->㟘(J)L㚬/ḙ/ἥ;

    :cond_0
    iget v0, p0, L㚬/ḙ/㲝;->ỷ:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, L㚬/ḙ/ἥ;->㭲()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, L㚬/ḙ/ἥ;->ᇿ(Landroid/animation/TimeInterpolator;)L㚬/ḙ/ἥ;

    :cond_1
    iget v0, p0, L㚬/ḙ/㲝;->ỷ:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    invoke-virtual {p0}, L㚬/ḙ/ἥ;->ม()L㚬/ḙ/ბ;

    move-result-object v0

    invoke-virtual {p1, v0}, L㚬/ḙ/ἥ;->㲊(L㚬/ḙ/ბ;)V

    :cond_2
    iget v0, p0, L㚬/ḙ/㲝;->ỷ:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    invoke-virtual {p0}, L㚬/ḙ/ἥ;->㢏()L㚬/ḙ/ᆻ;

    move-result-object v0

    invoke-virtual {p1, v0}, L㚬/ḙ/ἥ;->ᣑ(L㚬/ḙ/ᆻ;)V

    :cond_3
    iget v0, p0, L㚬/ḙ/㲝;->ỷ:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    invoke-virtual {p0}, L㚬/ḙ/ἥ;->㞘()L㚬/ḙ/ἥ$ḓ;

    move-result-object v0

    invoke-virtual {p1, v0}, L㚬/ḙ/ἥ;->ᣝ(L㚬/ḙ/ἥ$ḓ;)V

    :cond_4
    return-object p0
.end method

.method public ᆻ(L㚬/ḙ/㭲;)V
    .locals 3

    iget-object v0, p1, L㚬/ḙ/㭲;->䂻:Landroid/view/View;

    invoke-virtual {p0, v0}, L㚬/ḙ/ἥ;->ᰘ(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, L㚬/ḙ/㲝;->㖆:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, L㚬/ḙ/ἥ;

    iget-object v2, p1, L㚬/ḙ/㭲;->䂻:Landroid/view/View;

    invoke-virtual {v1, v2}, L㚬/ḙ/ἥ;->ᰘ(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, L㚬/ḙ/ἥ;->ᆻ(L㚬/ḙ/㭲;)V

    iget-object v2, p1, L㚬/ḙ/㭲;->㚬:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public bridge synthetic ᇿ(Landroid/animation/TimeInterpolator;)L㚬/ḙ/ἥ;
    .locals 0

    invoke-virtual {p0, p1}, L㚬/ḙ/㲝;->क(Landroid/animation/TimeInterpolator;)L㚬/ḙ/㲝;

    move-result-object p1

    return-object p1
.end method

.method public final Ᏼ(L㚬/ḙ/ἥ;)V
    .locals 1

    iget-object v0, p0, L㚬/ḙ/㲝;->㖆:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p0, p1, L㚬/ḙ/ἥ;->㭲:L㚬/ḙ/㲝;

    return-void
.end method

.method public ᓭ(Landroid/view/ViewGroup;L㚬/ḙ/ḙ;L㚬/ḙ/ḙ;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "L\u36ac/\u1e19/\u1e19;",
            "L\u36ac/\u1e19/\u1e19;",
            "Ljava/util/ArrayList<",
            "L\u36ac/\u1e19/\u3b72;",
            ">;",
            "Ljava/util/ArrayList<",
            "L\u36ac/\u1e19/\u3b72;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    invoke-virtual {p0}, L㚬/ḙ/ἥ;->ㄬ()J

    move-result-wide v1

    iget-object v3, v0, L㚬/ḙ/㲝;->㖆:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    iget-object v5, v0, L㚬/ḙ/㲝;->㖆:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, L㚬/ḙ/ἥ;

    const-wide/16 v7, 0x0

    cmp-long v5, v1, v7

    if-lez v5, :cond_2

    iget-boolean v5, v0, L㚬/ḙ/㲝;->㭢:Z

    if-nez v5, :cond_0

    if-nez v4, :cond_2

    :cond_0
    invoke-virtual {v6}, L㚬/ḙ/ἥ;->ㄬ()J

    move-result-wide v9

    cmp-long v5, v9, v7

    if-lez v5, :cond_1

    add-long/2addr v9, v1

    invoke-virtual {v6, v9, v10}, L㚬/ḙ/ἥ;->ᘚ(J)L㚬/ḙ/ἥ;

    goto :goto_1

    :cond_1
    invoke-virtual {v6, v1, v2}, L㚬/ḙ/ἥ;->ᘚ(J)L㚬/ḙ/ἥ;

    :cond_2
    :goto_1
    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-virtual/range {v6 .. v11}, L㚬/ḙ/ἥ;->ᓭ(Landroid/view/ViewGroup;L㚬/ḙ/ḙ;L㚬/ḙ/ḙ;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final ᗼ()V
    .locals 3

    new-instance v0, L㚬/ḙ/㲝$䂻;

    invoke-direct {v0, p0}, L㚬/ḙ/㲝$䂻;-><init>(L㚬/ḙ/㲝;)V

    iget-object v1, p0, L㚬/ḙ/㲝;->㖆:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, L㚬/ḙ/ἥ;

    invoke-virtual {v2, v0}, L㚬/ḙ/ἥ;->உ(L㚬/ḙ/ἥ$䆀;)L㚬/ḙ/ἥ;

    goto :goto_0

    :cond_0
    iget-object v0, p0, L㚬/ḙ/㲝;->㖆:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, L㚬/ḙ/㲝;->Խ:I

    return-void
.end method

.method public bridge synthetic ᘚ(J)L㚬/ḙ/ἥ;
    .locals 0

    invoke-virtual {p0, p1, p2}, L㚬/ḙ/㲝;->䃻(J)L㚬/ḙ/㲝;

    move-result-object p1

    return-object p1
.end method

.method public ᣑ(L㚬/ḙ/ᆻ;)V
    .locals 2

    invoke-super {p0, p1}, L㚬/ḙ/ἥ;->ᣑ(L㚬/ḙ/ᆻ;)V

    iget v0, p0, L㚬/ḙ/㲝;->ỷ:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, L㚬/ḙ/㲝;->ỷ:I

    iget-object v0, p0, L㚬/ḙ/㲝;->㖆:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, L㚬/ḙ/㲝;->㖆:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, L㚬/ḙ/㲝;->㖆:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, L㚬/ḙ/ἥ;

    invoke-virtual {v1, p1}, L㚬/ḙ/ἥ;->ᣑ(L㚬/ḙ/ᆻ;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public ᣝ(L㚬/ḙ/ἥ$ḓ;)V
    .locals 3

    invoke-super {p0, p1}, L㚬/ḙ/ἥ;->ᣝ(L㚬/ḙ/ἥ$ḓ;)V

    iget v0, p0, L㚬/ḙ/㲝;->ỷ:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, L㚬/ḙ/㲝;->ỷ:I

    iget-object v0, p0, L㚬/ḙ/㲝;->㖆:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, L㚬/ḙ/㲝;->㖆:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, L㚬/ḙ/ἥ;

    invoke-virtual {v2, p1}, L㚬/ḙ/ἥ;->ᣝ(L㚬/ḙ/ἥ$ḓ;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public ᭊ()V
    .locals 4

    iget-object v0, p0, L㚬/ḙ/㲝;->㖆:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, L㚬/ḙ/ἥ;->ᣦ()V

    invoke-virtual {p0}, L㚬/ḙ/ἥ;->ბ()V

    return-void

    :cond_0
    invoke-virtual {p0}, L㚬/ḙ/㲝;->ᗼ()V

    iget-boolean v0, p0, L㚬/ḙ/㲝;->㭢:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, L㚬/ḙ/㲝;->㖆:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, L㚬/ḙ/㲝;->㖆:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, L㚬/ḙ/ἥ;

    iget-object v2, p0, L㚬/ḙ/㲝;->㖆:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, L㚬/ḙ/ἥ;

    new-instance v3, L㚬/ḙ/㲝$உ;

    invoke-direct {v3, p0, v2}, L㚬/ḙ/㲝$உ;-><init>(L㚬/ḙ/㲝;L㚬/ḙ/ἥ;)V

    invoke-virtual {v1, v3}, L㚬/ḙ/ἥ;->உ(L㚬/ḙ/ἥ$䆀;)L㚬/ḙ/ἥ;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, L㚬/ḙ/㲝;->㖆:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, L㚬/ḙ/ἥ;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, L㚬/ḙ/ἥ;->ᭊ()V

    goto :goto_2

    :cond_2
    iget-object v0, p0, L㚬/ḙ/㲝;->㖆:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, L㚬/ḙ/ἥ;

    invoke-virtual {v1}, L㚬/ḙ/ἥ;->ᭊ()V

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public Ổ(Landroid/view/View;)L㚬/ḙ/㲝;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, L㚬/ḙ/㲝;->㖆:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, L㚬/ḙ/㲝;->㖆:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, L㚬/ḙ/ἥ;

    invoke-virtual {v1, p1}, L㚬/ḙ/ἥ;->䂻(Landroid/view/View;)L㚬/ḙ/ἥ;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, L㚬/ḙ/ἥ;->䂻(Landroid/view/View;)L㚬/ḙ/ἥ;

    move-object p1, p0

    check-cast p1, L㚬/ḙ/㲝;

    return-object p1
.end method

.method public ἂ(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, L㚬/ḙ/ἥ;->ἂ(Landroid/view/View;)V

    iget-object v0, p0, L㚬/ḙ/㲝;->㖆:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, L㚬/ḙ/㲝;->㖆:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, L㚬/ḙ/ἥ;

    invoke-virtual {v2, p1}, L㚬/ḙ/ἥ;->ἂ(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public ἃ(L㚬/ḙ/ἥ$䆀;)L㚬/ḙ/㲝;
    .locals 0

    invoke-super {p0, p1}, L㚬/ḙ/ἥ;->䅚(L㚬/ḙ/ἥ$䆀;)L㚬/ḙ/ἥ;

    move-object p1, p0

    check-cast p1, L㚬/ḙ/㲝;

    return-object p1
.end method

.method public ἥ()L㚬/ḙ/ἥ;
    .locals 4

    invoke-super {p0}, L㚬/ḙ/ἥ;->ἥ()L㚬/ḙ/ἥ;

    move-result-object v0

    check-cast v0, L㚬/ḙ/㲝;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, L㚬/ḙ/㲝;->㖆:Ljava/util/ArrayList;

    iget-object v1, p0, L㚬/ḙ/㲝;->㖆:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, L㚬/ḙ/㲝;->㖆:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, L㚬/ḙ/ἥ;

    invoke-virtual {v3}, L㚬/ḙ/ἥ;->ἥ()L㚬/ḙ/ἥ;

    move-result-object v3

    invoke-virtual {v0, v3}, L㚬/ḙ/㲝;->Ᏼ(L㚬/ḙ/ἥ;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public ⶬ(J)L㚬/ḙ/㲝;
    .locals 5

    invoke-super {p0, p1, p2}, L㚬/ḙ/ἥ;->㟘(J)L㚬/ḙ/ἥ;

    iget-wide v0, p0, L㚬/ḙ/ἥ;->㺴:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    iget-object v0, p0, L㚬/ḙ/㲝;->㖆:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, L㚬/ḙ/㲝;->㖆:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, L㚬/ḙ/ἥ;

    invoke-virtual {v2, p1, p2}, L㚬/ḙ/ἥ;->㟘(J)L㚬/ḙ/ἥ;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public ⷜ(I)L㚬/ḙ/㲝;
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, L㚬/ḙ/㲝;->㭢:Z

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/util/AndroidRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid parameter for TransitionSet ordering: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-boolean v0, p0, L㚬/ḙ/㲝;->㭢:Z

    :goto_0
    return-object p0
.end method

.method public ㄏ(L㚬/ḙ/㭲;)V
    .locals 3

    invoke-super {p0, p1}, L㚬/ḙ/ἥ;->ㄏ(L㚬/ḙ/㭲;)V

    iget-object v0, p0, L㚬/ḙ/㲝;->㖆:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, L㚬/ḙ/㲝;->㖆:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, L㚬/ḙ/ἥ;

    invoke-virtual {v2, p1}, L㚬/ḙ/ἥ;->ㄏ(L㚬/ḙ/㭲;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic 㟘(J)L㚬/ḙ/ἥ;
    .locals 0

    invoke-virtual {p0, p1, p2}, L㚬/ḙ/㲝;->ⶬ(J)L㚬/ḙ/㲝;

    return-object p0
.end method

.method public 㠭(I)L㚬/ḙ/ἥ;
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, L㚬/ḙ/㲝;->㖆:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, L㚬/ḙ/㲝;->㖆:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, L㚬/ḙ/ἥ;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic 㮕(Landroid/view/View;)L㚬/ḙ/ἥ;
    .locals 0

    invoke-virtual {p0, p1}, L㚬/ḙ/㲝;->䆍(Landroid/view/View;)L㚬/ḙ/㲝;

    move-result-object p1

    return-object p1
.end method

.method public 㲊(L㚬/ḙ/ბ;)V
    .locals 3

    invoke-super {p0, p1}, L㚬/ḙ/ἥ;->㲊(L㚬/ḙ/ბ;)V

    iget v0, p0, L㚬/ḙ/㲝;->ỷ:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, L㚬/ḙ/㲝;->ỷ:I

    iget-object v0, p0, L㚬/ḙ/㲝;->㖆:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, L㚬/ḙ/㲝;->㖆:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, L㚬/ḙ/ἥ;

    invoke-virtual {v2, p1}, L㚬/ḙ/ἥ;->㲊(L㚬/ḙ/ბ;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public 㽛(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-super {p0, p1}, L㚬/ḙ/ἥ;->㽛(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, L㚬/ḙ/㲝;->㖆:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, L㚬/ḙ/㲝;->㖆:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, L㚬/ḙ/ἥ;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, L㚬/ḙ/ἥ;->㽛(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic 䂻(Landroid/view/View;)L㚬/ḙ/ἥ;
    .locals 0

    invoke-virtual {p0, p1}, L㚬/ḙ/㲝;->Ổ(Landroid/view/View;)L㚬/ḙ/㲝;

    move-result-object p1

    return-object p1
.end method

.method public 䃻(J)L㚬/ḙ/㲝;
    .locals 0

    invoke-super {p0, p1, p2}, L㚬/ḙ/ἥ;->ᘚ(J)L㚬/ḙ/ἥ;

    move-object p1, p0

    check-cast p1, L㚬/ḙ/㲝;

    return-object p1
.end method

.method public bridge synthetic 䅚(L㚬/ḙ/ἥ$䆀;)L㚬/ḙ/ἥ;
    .locals 0

    invoke-virtual {p0, p1}, L㚬/ḙ/㲝;->ἃ(L㚬/ḙ/ἥ$䆀;)L㚬/ḙ/㲝;

    move-result-object p1

    return-object p1
.end method

.method public 䆍(Landroid/view/View;)L㚬/ḙ/㲝;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, L㚬/ḙ/㲝;->㖆:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, L㚬/ḙ/㲝;->㖆:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, L㚬/ḙ/ἥ;

    invoke-virtual {v1, p1}, L㚬/ḙ/ἥ;->㮕(Landroid/view/View;)L㚬/ḙ/ἥ;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, L㚬/ḙ/ἥ;->㮕(Landroid/view/View;)L㚬/ḙ/ἥ;

    move-object p1, p0

    check-cast p1, L㚬/ḙ/㲝;

    return-object p1
.end method

.method public 䋡()I
    .locals 1

    iget-object v0, p0, L㚬/ḙ/㲝;->㖆:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
