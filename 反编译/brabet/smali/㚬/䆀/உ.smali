.class public L㚬/䆀/உ;
.super L㚬/䆀/ᆻ;
.source ""

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "L\u36ac/\u4180/\u11bb<",
        "TK;TV;>;",
        "Ljava/util/Map<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public ㄏ:L㚬/䆀/䆀;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "L\u36ac/\u4180/\u4180<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, L㚬/䆀/ᆻ;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, L㚬/䆀/ᆻ;-><init>(I)V

    return-void
.end method

.method public constructor <init>(L㚬/䆀/ᆻ;)V
    .locals 0

    invoke-direct {p0, p1}, L㚬/䆀/ᆻ;-><init>(L㚬/䆀/ᆻ;)V

    return-void
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    invoke-virtual {p0}, L㚬/䆀/உ;->ཇ()L㚬/䆀/䆀;

    move-result-object v0

    invoke-virtual {v0}, L㚬/䆀/䆀;->㹖()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    invoke-virtual {p0}, L㚬/䆀/உ;->ཇ()L㚬/䆀/䆀;

    move-result-object v0

    invoke-virtual {v0}, L㚬/䆀/䆀;->ἥ()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    iget v0, p0, L㚬/䆀/ᆻ;->㺴:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, L㚬/䆀/ᆻ;->㚬(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, L㚬/䆀/ᆻ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, L㚬/䆀/உ;->ཇ()L㚬/䆀/䆀;

    move-result-object v0

    invoke-virtual {v0}, L㚬/䆀/䆀;->ཇ()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final ཇ()L㚬/䆀/䆀;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "L\u36ac/\u4180/\u4180<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, L㚬/䆀/உ;->ㄏ:L㚬/䆀/䆀;

    if-nez v0, :cond_0

    new-instance v0, L㚬/䆀/உ$உ;

    invoke-direct {v0, p0}, L㚬/䆀/உ$உ;-><init>(L㚬/䆀/உ;)V

    iput-object v0, p0, L㚬/䆀/உ;->ㄏ:L㚬/䆀/䆀;

    :cond_0
    iget-object v0, p0, L㚬/䆀/உ;->ㄏ:L㚬/䆀/䆀;

    return-object v0
.end method

.method public ᓭ(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-static {p0, p1}, L㚬/䆀/䆀;->ბ(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method
