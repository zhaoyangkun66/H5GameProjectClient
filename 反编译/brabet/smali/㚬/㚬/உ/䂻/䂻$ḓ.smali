.class public abstract L㚬/㚬/உ/䂻/䂻$ḓ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;
.implements L㚬/㚬/உ/䂻/䂻$䆀;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/㚬/உ/䂻/䂻;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "\u1e13"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;",
        "L\u36ac/\u36ac/\u0b89/\u40bb/\u40bb$\u4180<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public 㚬:L㚬/㚬/உ/䂻/䂻$㚬;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "L\u36ac/\u36ac/\u0b89/\u40bb/\u40bb$\u36ac<",
            "TK;TV;>;"
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
.method public constructor <init>(L㚬/㚬/உ/䂻/䂻$㚬;L㚬/㚬/உ/䂻/䂻$㚬;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "L\u36ac/\u36ac/\u0b89/\u40bb/\u40bb$\u36ac<",
            "TK;TV;>;",
            "L\u36ac/\u36ac/\u0b89/\u40bb/\u40bb$\u36ac<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, L㚬/㚬/உ/䂻/䂻$ḓ;->䂻:L㚬/㚬/உ/䂻/䂻$㚬;

    iput-object p1, p0, L㚬/㚬/உ/䂻/䂻$ḓ;->㚬:L㚬/㚬/உ/䂻/䂻$㚬;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, L㚬/㚬/உ/䂻/䂻$ḓ;->㚬:L㚬/㚬/உ/䂻/䂻$㚬;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, L㚬/㚬/உ/䂻/䂻$ḓ;->㺴()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public உ(L㚬/㚬/உ/䂻/䂻$㚬;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "L\u36ac/\u36ac/\u0b89/\u40bb/\u40bb$\u36ac<",
            "TK;TV;>;)V"
        }
    .end annotation

    iget-object v0, p0, L㚬/㚬/உ/䂻/䂻$ḓ;->䂻:L㚬/㚬/உ/䂻/䂻$㚬;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, L㚬/㚬/உ/䂻/䂻$ḓ;->㚬:L㚬/㚬/உ/䂻/䂻$㚬;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, L㚬/㚬/உ/䂻/䂻$ḓ;->㚬:L㚬/㚬/உ/䂻/䂻$㚬;

    iput-object v0, p0, L㚬/㚬/உ/䂻/䂻$ḓ;->䂻:L㚬/㚬/உ/䂻/䂻$㚬;

    :cond_0
    iget-object v0, p0, L㚬/㚬/உ/䂻/䂻$ḓ;->䂻:L㚬/㚬/உ/䂻/䂻$㚬;

    if-ne v0, p1, :cond_1

    invoke-virtual {p0, v0}, L㚬/㚬/உ/䂻/䂻$ḓ;->䂻(L㚬/㚬/உ/䂻/䂻$㚬;)L㚬/㚬/உ/䂻/䂻$㚬;

    move-result-object v0

    iput-object v0, p0, L㚬/㚬/உ/䂻/䂻$ḓ;->䂻:L㚬/㚬/உ/䂻/䂻$㚬;

    :cond_1
    iget-object v0, p0, L㚬/㚬/உ/䂻/䂻$ḓ;->㚬:L㚬/㚬/உ/䂻/䂻$㚬;

    if-ne v0, p1, :cond_2

    invoke-virtual {p0}, L㚬/㚬/உ/䂻/䂻$ḓ;->ḓ()L㚬/㚬/உ/䂻/䂻$㚬;

    move-result-object p1

    iput-object p1, p0, L㚬/㚬/உ/䂻/䂻$ḓ;->㚬:L㚬/㚬/உ/䂻/䂻$㚬;

    :cond_2
    return-void
.end method

.method public final ḓ()L㚬/㚬/உ/䂻/䂻$㚬;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "L\u36ac/\u36ac/\u0b89/\u40bb/\u40bb$\u36ac<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, L㚬/㚬/உ/䂻/䂻$ḓ;->㚬:L㚬/㚬/உ/䂻/䂻$㚬;

    iget-object v1, p0, L㚬/㚬/உ/䂻/䂻$ḓ;->䂻:L㚬/㚬/உ/䂻/䂻$㚬;

    if-eq v0, v1, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, L㚬/㚬/உ/䂻/䂻$ḓ;->㚬(L㚬/㚬/உ/䂻/䂻$㚬;)L㚬/㚬/உ/䂻/䂻$㚬;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract 㚬(L㚬/㚬/உ/䂻/䂻$㚬;)L㚬/㚬/உ/䂻/䂻$㚬;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "L\u36ac/\u36ac/\u0b89/\u40bb/\u40bb$\u36ac<",
            "TK;TV;>;)",
            "L\u36ac/\u36ac/\u0b89/\u40bb/\u40bb$\u36ac<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public 㺴()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, L㚬/㚬/உ/䂻/䂻$ḓ;->㚬:L㚬/㚬/உ/䂻/䂻$㚬;

    invoke-virtual {p0}, L㚬/㚬/உ/䂻/䂻$ḓ;->ḓ()L㚬/㚬/உ/䂻/䂻$㚬;

    move-result-object v1

    iput-object v1, p0, L㚬/㚬/உ/䂻/䂻$ḓ;->㚬:L㚬/㚬/உ/䂻/䂻$㚬;

    return-object v0
.end method

.method public abstract 䂻(L㚬/㚬/உ/䂻/䂻$㚬;)L㚬/㚬/உ/䂻/䂻$㚬;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "L\u36ac/\u36ac/\u0b89/\u40bb/\u40bb$\u36ac<",
            "TK;TV;>;)",
            "L\u36ac/\u36ac/\u0b89/\u40bb/\u40bb$\u36ac<",
            "TK;TV;>;"
        }
    .end annotation
.end method
