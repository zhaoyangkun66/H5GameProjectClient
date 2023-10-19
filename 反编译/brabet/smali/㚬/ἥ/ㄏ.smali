.class public L㚬/ἥ/ㄏ;
.super L㚬/ἥ/ḓ;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        L㚬/ἥ/ㄏ$உ;
    }
.end annotation


# instance fields
.field public உ:L㚬/㚬/உ/䂻/உ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "L\u36ac/\u36ac/\u0b89/\u40bb/\u0b89<",
            "L\u36ac/\u1f25/\u11bb;",
            "L\u36ac/\u1f25/\u310f$\u0b89;",
            ">;"
        }
    .end annotation
.end field

.field public ᆻ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "L\u36ac/\u1f25/\u1e13$\u36ac;",
            ">;"
        }
    .end annotation
.end field

.field public ḓ:Z

.field public final ℓ:Z

.field public final 㚬:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "L\u36ac/\u1f25/\u2113;",
            ">;"
        }
    .end annotation
.end field

.field public 㺴:I

.field public 䂻:L㚬/ἥ/ḓ$㚬;

.field public 䆀:Z


# direct methods
.method public constructor <init>(L㚬/ἥ/ℓ;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, L㚬/ἥ/ㄏ;-><init>(L㚬/ἥ/ℓ;Z)V

    return-void
.end method

.method public constructor <init>(L㚬/ἥ/ℓ;Z)V
    .locals 1

    invoke-direct {p0}, L㚬/ἥ/ḓ;-><init>()V

    new-instance v0, L㚬/㚬/உ/䂻/உ;

    invoke-direct {v0}, L㚬/㚬/உ/䂻/உ;-><init>()V

    iput-object v0, p0, L㚬/ἥ/ㄏ;->உ:L㚬/㚬/உ/䂻/உ;

    const/4 v0, 0x0

    iput v0, p0, L㚬/ἥ/ㄏ;->㺴:I

    iput-boolean v0, p0, L㚬/ἥ/ㄏ;->ḓ:Z

    iput-boolean v0, p0, L㚬/ἥ/ㄏ;->䆀:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, L㚬/ἥ/ㄏ;->ᆻ:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, L㚬/ἥ/ㄏ;->㚬:Ljava/lang/ref/WeakReference;

    sget-object p1, L㚬/ἥ/ḓ$㚬;->㚬:L㚬/ἥ/ḓ$㚬;

    iput-object p1, p0, L㚬/ἥ/ㄏ;->䂻:L㚬/ἥ/ḓ$㚬;

    iput-boolean p2, p0, L㚬/ἥ/ㄏ;->ℓ:Z

    return-void
.end method

.method public static 㧦(L㚬/ἥ/ḓ$㚬;L㚬/ἥ/ḓ$㚬;)L㚬/ἥ/ḓ$㚬;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_0

    move-object p0, p1

    :cond_0
    return-object p0
.end method


# virtual methods
.method public உ(L㚬/ἥ/ᆻ;)V
    .locals 6

    const-string v0, "addObserver"

    invoke-virtual {p0, v0}, L㚬/ἥ/ㄏ;->䆀(Ljava/lang/String;)V

    iget-object v0, p0, L㚬/ἥ/ㄏ;->䂻:L㚬/ἥ/ḓ$㚬;

    sget-object v1, L㚬/ἥ/ḓ$㚬;->䂻:L㚬/ἥ/ḓ$㚬;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, L㚬/ἥ/ḓ$㚬;->㚬:L㚬/ἥ/ḓ$㚬;

    :goto_0
    new-instance v0, L㚬/ἥ/ㄏ$உ;

    invoke-direct {v0, p1, v1}, L㚬/ἥ/ㄏ$உ;-><init>(L㚬/ἥ/ᆻ;L㚬/ἥ/ḓ$㚬;)V

    iget-object v1, p0, L㚬/ἥ/ㄏ;->உ:L㚬/㚬/உ/䂻/உ;

    invoke-virtual {v1, p1, v0}, L㚬/㚬/உ/䂻/உ;->ᆻ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, L㚬/ἥ/ㄏ$உ;

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, L㚬/ἥ/ㄏ;->㚬:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, L㚬/ἥ/ℓ;

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget v2, p0, L㚬/ἥ/ㄏ;->㺴:I

    const/4 v3, 0x1

    if-nez v2, :cond_4

    iget-boolean v2, p0, L㚬/ἥ/ㄏ;->ḓ:Z

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v2, 0x1

    :goto_2
    invoke-virtual {p0, p1}, L㚬/ἥ/ㄏ;->ḓ(L㚬/ἥ/ᆻ;)L㚬/ἥ/ḓ$㚬;

    move-result-object v4

    iget v5, p0, L㚬/ἥ/ㄏ;->㺴:I

    add-int/2addr v5, v3

    iput v5, p0, L㚬/ἥ/ㄏ;->㺴:I

    :goto_3
    iget-object v5, v0, L㚬/ἥ/ㄏ$உ;->உ:L㚬/ἥ/ḓ$㚬;

    invoke-virtual {v5, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-gez v4, :cond_6

    iget-object v4, p0, L㚬/ἥ/ㄏ;->உ:L㚬/㚬/உ/䂻/உ;

    invoke-virtual {v4, p1}, L㚬/㚬/உ/䂻/உ;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, v0, L㚬/ἥ/ㄏ$உ;->உ:L㚬/ἥ/ḓ$㚬;

    invoke-virtual {p0, v4}, L㚬/ἥ/ㄏ;->ཇ(L㚬/ἥ/ḓ$㚬;)V

    iget-object v4, v0, L㚬/ἥ/ㄏ$உ;->உ:L㚬/ἥ/ḓ$㚬;

    invoke-static {v4}, L㚬/ἥ/ḓ$䂻;->㚬(L㚬/ἥ/ḓ$㚬;)L㚬/ἥ/ḓ$䂻;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v0, v1, v4}, L㚬/ἥ/ㄏ$உ;->உ(L㚬/ἥ/ℓ;L㚬/ἥ/ḓ$䂻;)V

    invoke-virtual {p0}, L㚬/ἥ/ㄏ;->ἥ()V

    invoke-virtual {p0, p1}, L㚬/ἥ/ㄏ;->ḓ(L㚬/ἥ/ᆻ;)L㚬/ἥ/ḓ$㚬;

    move-result-object v4

    goto :goto_3

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no event up from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, L㚬/ἥ/ㄏ$உ;->உ:L㚬/ἥ/ḓ$㚬;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    if-nez v2, :cond_7

    invoke-virtual {p0}, L㚬/ἥ/ㄏ;->ბ()V

    :cond_7
    iget p1, p0, L㚬/ἥ/ㄏ;->㺴:I

    sub-int/2addr p1, v3

    iput p1, p0, L㚬/ἥ/ㄏ;->㺴:I

    return-void
.end method

.method public ಫ(L㚬/ἥ/ḓ$㚬;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "markState"

    invoke-virtual {p0, v0}, L㚬/ἥ/ㄏ;->䆀(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, L㚬/ἥ/ㄏ;->ᓭ(L㚬/ἥ/ḓ$㚬;)V

    return-void
.end method

.method public final ཇ(L㚬/ἥ/ḓ$㚬;)V
    .locals 1

    iget-object v0, p0, L㚬/ἥ/ㄏ;->ᆻ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final ბ()V
    .locals 3

    iget-object v0, p0, L㚬/ἥ/ㄏ;->㚬:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, L㚬/ἥ/ℓ;

    if-eqz v0, :cond_3

    :cond_0
    :goto_0
    invoke-virtual {p0}, L㚬/ἥ/ㄏ;->ㄏ()Z

    move-result v1

    const/4 v2, 0x0

    iput-boolean v2, p0, L㚬/ἥ/ㄏ;->䆀:Z

    if-nez v1, :cond_2

    iget-object v1, p0, L㚬/ἥ/ㄏ;->䂻:L㚬/ἥ/ḓ$㚬;

    iget-object v2, p0, L㚬/ἥ/ㄏ;->உ:L㚬/㚬/உ/䂻/உ;

    invoke-virtual {v2}, L㚬/㚬/உ/䂻/䂻;->䂻()Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, L㚬/ἥ/ㄏ$உ;

    iget-object v2, v2, L㚬/ἥ/ㄏ$உ;->உ:L㚬/ἥ/ḓ$㚬;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_1

    invoke-virtual {p0, v0}, L㚬/ἥ/ㄏ;->㺴(L㚬/ἥ/ℓ;)V

    :cond_1
    iget-object v1, p0, L㚬/ἥ/ㄏ;->உ:L㚬/㚬/உ/䂻/உ;

    invoke-virtual {v1}, L㚬/㚬/உ/䂻/䂻;->ḓ()Ljava/util/Map$Entry;

    move-result-object v1

    iget-boolean v2, p0, L㚬/ἥ/ㄏ;->䆀:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, L㚬/ἥ/ㄏ;->䂻:L㚬/ἥ/ḓ$㚬;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, L㚬/ἥ/ㄏ$உ;

    iget-object v1, v1, L㚬/ἥ/ㄏ$உ;->உ:L㚬/ἥ/ḓ$㚬;

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0, v0}, L㚬/ἥ/ㄏ;->ᆻ(L㚬/ἥ/ℓ;)V

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "LifecycleOwner of this LifecycleRegistry is alreadygarbage collected. It is too late to change lifecycle state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ᆻ(L㚬/ἥ/ℓ;)V
    .locals 5

    iget-object v0, p0, L㚬/ἥ/ㄏ;->உ:L㚬/㚬/உ/䂻/உ;

    invoke-virtual {v0}, L㚬/㚬/உ/䂻/䂻;->㺴()L㚬/㚬/உ/䂻/䂻$㺴;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, L㚬/ἥ/ㄏ;->䆀:Z

    if-nez v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, L㚬/ἥ/ㄏ$உ;

    :goto_0
    iget-object v3, v2, L㚬/ἥ/ㄏ$உ;->உ:L㚬/ἥ/ḓ$㚬;

    iget-object v4, p0, L㚬/ἥ/ㄏ;->䂻:L㚬/ἥ/ḓ$㚬;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-gez v3, :cond_0

    iget-boolean v3, p0, L㚬/ἥ/ㄏ;->䆀:Z

    if-nez v3, :cond_0

    iget-object v3, p0, L㚬/ἥ/ㄏ;->உ:L㚬/㚬/உ/䂻/உ;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, L㚬/㚬/உ/䂻/உ;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, L㚬/ἥ/ㄏ$உ;->உ:L㚬/ἥ/ḓ$㚬;

    invoke-virtual {p0, v3}, L㚬/ἥ/ㄏ;->ཇ(L㚬/ἥ/ḓ$㚬;)V

    iget-object v3, v2, L㚬/ἥ/ㄏ$உ;->உ:L㚬/ἥ/ḓ$㚬;

    invoke-static {v3}, L㚬/ἥ/ḓ$䂻;->㚬(L㚬/ἥ/ḓ$㚬;)L㚬/ἥ/ḓ$䂻;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, p1, v3}, L㚬/ἥ/ㄏ$உ;->உ(L㚬/ἥ/ℓ;L㚬/ἥ/ḓ$䂻;)V

    invoke-virtual {p0}, L㚬/ἥ/ㄏ;->ἥ()V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no event up from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, L㚬/ἥ/ㄏ$உ;->உ:L㚬/ἥ/ḓ$㚬;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void
.end method

.method public ᓭ(L㚬/ἥ/ḓ$㚬;)V
    .locals 1

    const-string v0, "setCurrentState"

    invoke-virtual {p0, v0}, L㚬/ἥ/ㄏ;->䆀(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, L㚬/ἥ/ㄏ;->㹖(L㚬/ἥ/ḓ$㚬;)V

    return-void
.end method

.method public final ḓ(L㚬/ἥ/ᆻ;)L㚬/ἥ/ḓ$㚬;
    .locals 2

    iget-object v0, p0, L㚬/ἥ/ㄏ;->உ:L㚬/㚬/உ/䂻/உ;

    invoke-virtual {v0, p1}, L㚬/㚬/உ/䂻/உ;->ㄏ(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, L㚬/ἥ/ㄏ$உ;

    iget-object p1, p1, L㚬/ἥ/ㄏ$உ;->உ:L㚬/ἥ/ḓ$㚬;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iget-object v1, p0, L㚬/ἥ/ㄏ;->ᆻ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, L㚬/ἥ/ㄏ;->ᆻ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, L㚬/ἥ/ḓ$㚬;

    :cond_1
    iget-object v1, p0, L㚬/ἥ/ㄏ;->䂻:L㚬/ἥ/ḓ$㚬;

    invoke-static {v1, p1}, L㚬/ἥ/ㄏ;->㧦(L㚬/ἥ/ḓ$㚬;L㚬/ἥ/ḓ$㚬;)L㚬/ἥ/ḓ$㚬;

    move-result-object p1

    invoke-static {p1, v0}, L㚬/ἥ/ㄏ;->㧦(L㚬/ἥ/ḓ$㚬;L㚬/ἥ/ḓ$㚬;)L㚬/ἥ/ḓ$㚬;

    move-result-object p1

    return-object p1
.end method

.method public final ἥ()V
    .locals 2

    iget-object v0, p0, L㚬/ἥ/ㄏ;->ᆻ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public ℓ(L㚬/ἥ/ḓ$䂻;)V
    .locals 1

    const-string v0, "handleLifecycleEvent"

    invoke-virtual {p0, v0}, L㚬/ἥ/ㄏ;->䆀(Ljava/lang/String;)V

    invoke-virtual {p1}, L㚬/ἥ/ḓ$䂻;->䂻()L㚬/ἥ/ḓ$㚬;

    move-result-object p1

    invoke-virtual {p0, p1}, L㚬/ἥ/ㄏ;->㹖(L㚬/ἥ/ḓ$㚬;)V

    return-void
.end method

.method public final ㄏ()Z
    .locals 3

    iget-object v0, p0, L㚬/ἥ/ㄏ;->உ:L㚬/㚬/உ/䂻/உ;

    invoke-virtual {v0}, L㚬/㚬/உ/䂻/䂻;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, L㚬/ἥ/ㄏ;->உ:L㚬/㚬/உ/䂻/உ;

    invoke-virtual {v0}, L㚬/㚬/உ/䂻/䂻;->䂻()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, L㚬/ἥ/ㄏ$உ;

    iget-object v0, v0, L㚬/ἥ/ㄏ$உ;->உ:L㚬/ἥ/ḓ$㚬;

    iget-object v2, p0, L㚬/ἥ/ㄏ;->உ:L㚬/㚬/உ/䂻/உ;

    invoke-virtual {v2}, L㚬/㚬/உ/䂻/䂻;->ḓ()Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, L㚬/ἥ/ㄏ$உ;

    iget-object v2, v2, L㚬/ἥ/ㄏ$உ;->உ:L㚬/ἥ/ḓ$㚬;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, L㚬/ἥ/ㄏ;->䂻:L㚬/ἥ/ḓ$㚬;

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public 㚬(L㚬/ἥ/ᆻ;)V
    .locals 1

    const-string v0, "removeObserver"

    invoke-virtual {p0, v0}, L㚬/ἥ/ㄏ;->䆀(Ljava/lang/String;)V

    iget-object v0, p0, L㚬/ἥ/ㄏ;->உ:L㚬/㚬/உ/䂻/உ;

    invoke-virtual {v0, p1}, L㚬/㚬/உ/䂻/உ;->ℓ(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final 㹖(L㚬/ἥ/ḓ$㚬;)V
    .locals 1

    iget-object v0, p0, L㚬/ἥ/ㄏ;->䂻:L㚬/ἥ/ḓ$㚬;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, L㚬/ἥ/ㄏ;->䂻:L㚬/ἥ/ḓ$㚬;

    iget-boolean p1, p0, L㚬/ἥ/ㄏ;->ḓ:Z

    const/4 v0, 0x1

    if-nez p1, :cond_2

    iget p1, p0, L㚬/ἥ/ㄏ;->㺴:I

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, L㚬/ἥ/ㄏ;->ḓ:Z

    invoke-virtual {p0}, L㚬/ἥ/ㄏ;->ბ()V

    const/4 p1, 0x0

    iput-boolean p1, p0, L㚬/ἥ/ㄏ;->ḓ:Z

    return-void

    :cond_2
    :goto_0
    iput-boolean v0, p0, L㚬/ἥ/ㄏ;->䆀:Z

    return-void
.end method

.method public final 㺴(L㚬/ἥ/ℓ;)V
    .locals 5

    iget-object v0, p0, L㚬/ἥ/ㄏ;->உ:L㚬/㚬/உ/䂻/உ;

    invoke-virtual {v0}, L㚬/㚬/உ/䂻/䂻;->உ()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, L㚬/ἥ/ㄏ;->䆀:Z

    if-nez v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, L㚬/ἥ/ㄏ$உ;

    :goto_0
    iget-object v3, v2, L㚬/ἥ/ㄏ$உ;->உ:L㚬/ἥ/ḓ$㚬;

    iget-object v4, p0, L㚬/ἥ/ㄏ;->䂻:L㚬/ἥ/ḓ$㚬;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-lez v3, :cond_0

    iget-boolean v3, p0, L㚬/ἥ/ㄏ;->䆀:Z

    if-nez v3, :cond_0

    iget-object v3, p0, L㚬/ἥ/ㄏ;->உ:L㚬/㚬/உ/䂻/உ;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, L㚬/㚬/உ/䂻/உ;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, L㚬/ἥ/ㄏ$உ;->உ:L㚬/ἥ/ḓ$㚬;

    invoke-static {v3}, L㚬/ἥ/ḓ$䂻;->உ(L㚬/ἥ/ḓ$㚬;)L㚬/ἥ/ḓ$䂻;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, L㚬/ἥ/ḓ$䂻;->䂻()L㚬/ἥ/ḓ$㚬;

    move-result-object v4

    invoke-virtual {p0, v4}, L㚬/ἥ/ㄏ;->ཇ(L㚬/ἥ/ḓ$㚬;)V

    invoke-virtual {v2, p1, v3}, L㚬/ἥ/ㄏ$உ;->உ(L㚬/ἥ/ℓ;L㚬/ἥ/ḓ$䂻;)V

    invoke-virtual {p0}, L㚬/ἥ/ㄏ;->ἥ()V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no event down from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, L㚬/ἥ/ㄏ$உ;->உ:L㚬/ἥ/ḓ$㚬;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void
.end method

.method public 䂻()L㚬/ἥ/ḓ$㚬;
    .locals 1

    iget-object v0, p0, L㚬/ἥ/ㄏ;->䂻:L㚬/ἥ/ḓ$㚬;

    return-object v0
.end method

.method public final 䆀(Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    iget-boolean v0, p0, L㚬/ἥ/ㄏ;->ℓ:Z

    if-eqz v0, :cond_1

    invoke-static {}, L㚬/㚬/உ/உ/உ;->䂻()L㚬/㚬/உ/உ/உ;

    move-result-object v0

    invoke-virtual {v0}, L㚬/㚬/உ/உ/உ;->உ()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must be called on the main thread"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method
