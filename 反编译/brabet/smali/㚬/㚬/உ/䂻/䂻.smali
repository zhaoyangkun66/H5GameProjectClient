.class public L㚬/㚬/உ/䂻/䂻;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        L㚬/㚬/உ/䂻/䂻$㚬;,
        L㚬/㚬/உ/䂻/䂻$䆀;,
        L㚬/㚬/உ/䂻/䂻$㺴;,
        L㚬/㚬/உ/䂻/䂻$䂻;,
        L㚬/㚬/உ/䂻/䂻$உ;,
        L㚬/㚬/உ/䂻/䂻$ḓ;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public ḓ:I

.field public 㚬:L㚬/㚬/உ/䂻/䂻$㚬;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "L\u36ac/\u36ac/\u0b89/\u40bb/\u40bb$\u36ac<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public 㺴:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "L\u36ac/\u36ac/\u0b89/\u40bb/\u40bb$\u4180<",
            "TK;TV;>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public 䂻:L㚬/㚬/உ/䂻/䂻$㚬;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "L\u36ac/\u36ac/\u0b89/\u40bb/\u40bb$\u36ac<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, L㚬/㚬/உ/䂻/䂻;->㺴:Ljava/util/WeakHashMap;

    const/4 v0, 0x0

    iput v0, p0, L㚬/㚬/உ/䂻/䂻;->ḓ:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, L㚬/㚬/உ/䂻/䂻;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, L㚬/㚬/உ/䂻/䂻;

    invoke-virtual {p0}, L㚬/㚬/உ/䂻/䂻;->size()I

    move-result v1

    invoke-virtual {p1}, L㚬/㚬/உ/䂻/䂻;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, L㚬/㚬/உ/䂻/䂻;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-virtual {p1}, L㚬/㚬/உ/䂻/䂻;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_4

    if-nez v4, :cond_5

    :cond_4
    if-eqz v3, :cond_3

    invoke-interface {v3, v4}, Ljava/util/Map$Entry;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_5
    return v2

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, L㚬/㚬/உ/䂻/䂻;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, L㚬/㚬/உ/䂻/䂻$உ;

    iget-object v1, p0, L㚬/㚬/உ/䂻/䂻;->䂻:L㚬/㚬/உ/䂻/䂻$㚬;

    iget-object v2, p0, L㚬/㚬/உ/䂻/䂻;->㚬:L㚬/㚬/உ/䂻/䂻$㚬;

    invoke-direct {v0, v1, v2}, L㚬/㚬/உ/䂻/䂻$உ;-><init>(L㚬/㚬/உ/䂻/䂻$㚬;L㚬/㚬/உ/䂻/䂻$㚬;)V

    iget-object v1, p0, L㚬/㚬/உ/䂻/䂻;->㺴:Ljava/util/WeakHashMap;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public size()I
    .locals 1

    iget v0, p0, L㚬/㚬/உ/䂻/䂻;->ḓ:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, L㚬/㚬/உ/䂻/䂻;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public உ()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, L㚬/㚬/உ/䂻/䂻$䂻;

    iget-object v1, p0, L㚬/㚬/உ/䂻/䂻;->㚬:L㚬/㚬/உ/䂻/䂻$㚬;

    iget-object v2, p0, L㚬/㚬/உ/䂻/䂻;->䂻:L㚬/㚬/உ/䂻/䂻$㚬;

    invoke-direct {v0, v1, v2}, L㚬/㚬/உ/䂻/䂻$䂻;-><init>(L㚬/㚬/உ/䂻/䂻$㚬;L㚬/㚬/உ/䂻/䂻$㚬;)V

    iget-object v1, p0, L㚬/㚬/உ/䂻/䂻;->㺴:Ljava/util/WeakHashMap;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public ᆻ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, L㚬/㚬/உ/䂻/䂻;->㚬(Ljava/lang/Object;)L㚬/㚬/உ/䂻/䂻$㚬;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, L㚬/㚬/உ/䂻/䂻$㚬;->㚬:Ljava/lang/Object;

    return-object p1

    :cond_0
    invoke-virtual {p0, p1, p2}, L㚬/㚬/உ/䂻/䂻;->䆀(Ljava/lang/Object;Ljava/lang/Object;)L㚬/㚬/உ/䂻/䂻$㚬;

    const/4 p1, 0x0

    return-object p1
.end method

.method public ḓ()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, L㚬/㚬/உ/䂻/䂻;->㚬:L㚬/㚬/உ/䂻/䂻$㚬;

    return-object v0
.end method

.method public ℓ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, L㚬/㚬/உ/䂻/䂻;->㚬(Ljava/lang/Object;)L㚬/㚬/உ/䂻/䂻$㚬;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget v1, p0, L㚬/㚬/உ/䂻/䂻;->ḓ:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, L㚬/㚬/உ/䂻/䂻;->ḓ:I

    iget-object v1, p0, L㚬/㚬/உ/䂻/䂻;->㺴:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, L㚬/㚬/உ/䂻/䂻;->㺴:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, L㚬/㚬/உ/䂻/䂻$䆀;

    invoke-interface {v2, p1}, L㚬/㚬/உ/䂻/䂻$䆀;->உ(L㚬/㚬/உ/䂻/䂻$㚬;)V

    goto :goto_0

    :cond_1
    iget-object v1, p1, L㚬/㚬/உ/䂻/䂻$㚬;->ḓ:L㚬/㚬/உ/䂻/䂻$㚬;

    iget-object v2, p1, L㚬/㚬/உ/䂻/䂻$㚬;->㺴:L㚬/㚬/உ/䂻/䂻$㚬;

    if-eqz v1, :cond_2

    iput-object v2, v1, L㚬/㚬/உ/䂻/䂻$㚬;->㺴:L㚬/㚬/உ/䂻/䂻$㚬;

    goto :goto_1

    :cond_2
    iput-object v2, p0, L㚬/㚬/உ/䂻/䂻;->䂻:L㚬/㚬/உ/䂻/䂻$㚬;

    :goto_1
    iget-object v2, p1, L㚬/㚬/உ/䂻/䂻$㚬;->㺴:L㚬/㚬/உ/䂻/䂻$㚬;

    if-eqz v2, :cond_3

    iput-object v1, v2, L㚬/㚬/உ/䂻/䂻$㚬;->ḓ:L㚬/㚬/உ/䂻/䂻$㚬;

    goto :goto_2

    :cond_3
    iput-object v1, p0, L㚬/㚬/உ/䂻/䂻;->㚬:L㚬/㚬/உ/䂻/䂻$㚬;

    :goto_2
    iput-object v0, p1, L㚬/㚬/உ/䂻/䂻$㚬;->㺴:L㚬/㚬/உ/䂻/䂻$㚬;

    iput-object v0, p1, L㚬/㚬/உ/䂻/䂻$㚬;->ḓ:L㚬/㚬/உ/䂻/䂻$㚬;

    iget-object p1, p1, L㚬/㚬/உ/䂻/䂻$㚬;->㚬:Ljava/lang/Object;

    return-object p1
.end method

.method public 㚬(Ljava/lang/Object;)L㚬/㚬/உ/䂻/䂻$㚬;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "L\u36ac/\u36ac/\u0b89/\u40bb/\u40bb$\u36ac<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, L㚬/㚬/உ/䂻/䂻;->䂻:L㚬/㚬/உ/䂻/䂻$㚬;

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v0, L㚬/㚬/உ/䂻/䂻$㚬;->䂻:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, v0, L㚬/㚬/உ/䂻/䂻$㚬;->㺴:L㚬/㚬/உ/䂻/䂻$㚬;

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public 㺴()L㚬/㚬/உ/䂻/䂻$㺴;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "L\u36ac/\u36ac/\u0b89/\u40bb/\u40bb<",
            "TK;TV;>.\u3eb4;"
        }
    .end annotation

    new-instance v0, L㚬/㚬/உ/䂻/䂻$㺴;

    invoke-direct {v0, p0}, L㚬/㚬/உ/䂻/䂻$㺴;-><init>(L㚬/㚬/உ/䂻/䂻;)V

    iget-object v1, p0, L㚬/㚬/உ/䂻/䂻;->㺴:Ljava/util/WeakHashMap;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public 䂻()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, L㚬/㚬/உ/䂻/䂻;->䂻:L㚬/㚬/உ/䂻/䂻$㚬;

    return-object v0
.end method

.method public 䆀(Ljava/lang/Object;Ljava/lang/Object;)L㚬/㚬/உ/䂻/䂻$㚬;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "L\u36ac/\u36ac/\u0b89/\u40bb/\u40bb$\u36ac<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, L㚬/㚬/உ/䂻/䂻$㚬;

    invoke-direct {v0, p1, p2}, L㚬/㚬/உ/䂻/䂻$㚬;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget p1, p0, L㚬/㚬/உ/䂻/䂻;->ḓ:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, L㚬/㚬/உ/䂻/䂻;->ḓ:I

    iget-object p1, p0, L㚬/㚬/உ/䂻/䂻;->㚬:L㚬/㚬/உ/䂻/䂻$㚬;

    if-nez p1, :cond_0

    iput-object v0, p0, L㚬/㚬/உ/䂻/䂻;->䂻:L㚬/㚬/உ/䂻/䂻$㚬;

    :goto_0
    iput-object v0, p0, L㚬/㚬/உ/䂻/䂻;->㚬:L㚬/㚬/உ/䂻/䂻$㚬;

    return-object v0

    :cond_0
    iput-object v0, p1, L㚬/㚬/உ/䂻/䂻$㚬;->㺴:L㚬/㚬/உ/䂻/䂻$㚬;

    iput-object p1, v0, L㚬/㚬/உ/䂻/䂻$㚬;->ḓ:L㚬/㚬/உ/䂻/䂻$㚬;

    goto :goto_0
.end method
