.class public L㚬/㚬/உ/䂻/உ;
.super L㚬/㚬/உ/䂻/䂻;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "L\u36ac/\u36ac/\u0b89/\u40bb/\u40bb<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public 䆀:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TK;",
            "L\u36ac/\u36ac/\u0b89/\u40bb/\u40bb$\u36ac<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, L㚬/㚬/உ/䂻/䂻;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, L㚬/㚬/உ/䂻/உ;->䆀:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    iget-object v0, p0, L㚬/㚬/உ/䂻/உ;->䆀:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public ᆻ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, L㚬/㚬/உ/䂻/உ;->㚬(Ljava/lang/Object;)L㚬/㚬/உ/䂻/䂻$㚬;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, L㚬/㚬/உ/䂻/䂻$㚬;->㚬:Ljava/lang/Object;

    return-object p1

    :cond_0
    iget-object v0, p0, L㚬/㚬/உ/䂻/உ;->䆀:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, L㚬/㚬/உ/䂻/䂻;->䆀(Ljava/lang/Object;Ljava/lang/Object;)L㚬/㚬/உ/䂻/䂻$㚬;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1
.end method

.method public ℓ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    invoke-super {p0, p1}, L㚬/㚬/உ/䂻/䂻;->ℓ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, L㚬/㚬/உ/䂻/உ;->䆀:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public ㄏ(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, L㚬/㚬/உ/䂻/உ;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, L㚬/㚬/உ/䂻/உ;->䆀:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, L㚬/㚬/உ/䂻/䂻$㚬;

    iget-object p1, p1, L㚬/㚬/உ/䂻/䂻$㚬;->ḓ:L㚬/㚬/உ/䂻/䂻$㚬;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public 㚬(Ljava/lang/Object;)L㚬/㚬/உ/䂻/䂻$㚬;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "L\u36ac/\u36ac/\u0b89/\u40bb/\u40bb$\u36ac<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, L㚬/㚬/உ/䂻/உ;->䆀:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, L㚬/㚬/உ/䂻/䂻$㚬;

    return-object p1
.end method
