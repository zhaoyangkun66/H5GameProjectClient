.class public L㚬/ἥ/䂻$உ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/ἥ/䂻;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u0b89"
.end annotation


# instance fields
.field public final உ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "L\u36ac/\u1f25/\u1e13$\u40bb;",
            "Ljava/util/List<",
            "L\u36ac/\u1f25/\u40bb$\u40bb;",
            ">;>;"
        }
    .end annotation
.end field

.field public final 䂻:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "L\u36ac/\u1f25/\u40bb$\u40bb;",
            "L\u36ac/\u1f25/\u1e13$\u40bb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "L\u36ac/\u1f25/\u40bb$\u40bb;",
            "L\u36ac/\u1f25/\u1e13$\u40bb;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㚬/ἥ/䂻$உ;->䂻:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, L㚬/ἥ/䂻$உ;->உ:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, L㚬/ἥ/ḓ$䂻;

    iget-object v2, p0, L㚬/ἥ/䂻$உ;->உ:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, L㚬/ἥ/䂻$உ;->உ:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static 䂻(Ljava/util/List;L㚬/ἥ/ℓ;L㚬/ἥ/ḓ$䂻;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "L\u36ac/\u1f25/\u40bb$\u40bb;",
            ">;",
            "L\u36ac/\u1f25/\u2113;",
            "L\u36ac/\u1f25/\u1e13$\u40bb;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, L㚬/ἥ/䂻$䂻;

    invoke-virtual {v1, p1, p2, p3}, L㚬/ἥ/䂻$䂻;->உ(L㚬/ἥ/ℓ;L㚬/ἥ/ḓ$䂻;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public உ(L㚬/ἥ/ℓ;L㚬/ἥ/ḓ$䂻;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, L㚬/ἥ/䂻$உ;->உ:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0, p1, p2, p3}, L㚬/ἥ/䂻$உ;->䂻(Ljava/util/List;L㚬/ἥ/ℓ;L㚬/ἥ/ḓ$䂻;Ljava/lang/Object;)V

    iget-object v0, p0, L㚬/ἥ/䂻$உ;->உ:Ljava/util/Map;

    sget-object v1, L㚬/ἥ/ḓ$䂻;->ON_ANY:L㚬/ἥ/ḓ$䂻;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0, p1, p2, p3}, L㚬/ἥ/䂻$உ;->䂻(Ljava/util/List;L㚬/ἥ/ℓ;L㚬/ἥ/ḓ$䂻;Ljava/lang/Object;)V

    return-void
.end method
