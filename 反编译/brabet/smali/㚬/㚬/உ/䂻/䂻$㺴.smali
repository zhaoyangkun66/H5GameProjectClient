.class public L㚬/㚬/உ/䂻/䂻$㺴;
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
    accessFlags = 0x1
    name = "\u3eb4"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;",
        "L\u36ac/\u36ac/\u0b89/\u40bb/\u40bb$\u4180<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public 㚬:Z

.field public final synthetic 㺴:L㚬/㚬/உ/䂻/䂻;

.field public 䂻:L㚬/㚬/உ/䂻/䂻$㚬;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "L\u36ac/\u36ac/\u0b89/\u40bb/\u40bb$\u36ac<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(L㚬/㚬/உ/䂻/䂻;)V
    .locals 0

    iput-object p1, p0, L㚬/㚬/உ/䂻/䂻$㺴;->㺴:L㚬/㚬/உ/䂻/䂻;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, L㚬/㚬/உ/䂻/䂻$㺴;->㚬:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    iget-boolean v0, p0, L㚬/㚬/உ/䂻/䂻$㺴;->㚬:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, L㚬/㚬/உ/䂻/䂻$㺴;->㺴:L㚬/㚬/உ/䂻/䂻;

    iget-object v0, v0, L㚬/㚬/உ/䂻/䂻;->䂻:L㚬/㚬/உ/䂻/䂻$㚬;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, L㚬/㚬/உ/䂻/䂻$㺴;->䂻:L㚬/㚬/உ/䂻/䂻$㚬;

    if-eqz v0, :cond_2

    iget-object v0, v0, L㚬/㚬/உ/䂻/䂻$㚬;->㺴:L㚬/㚬/உ/䂻/䂻$㚬;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, L㚬/㚬/உ/䂻/䂻$㺴;->䂻()Ljava/util/Map$Entry;

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

    iget-object v0, p0, L㚬/㚬/உ/䂻/䂻$㺴;->䂻:L㚬/㚬/உ/䂻/䂻$㚬;

    if-ne p1, v0, :cond_1

    iget-object p1, v0, L㚬/㚬/உ/䂻/䂻$㚬;->ḓ:L㚬/㚬/உ/䂻/䂻$㚬;

    iput-object p1, p0, L㚬/㚬/உ/䂻/䂻$㺴;->䂻:L㚬/㚬/உ/䂻/䂻$㚬;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, L㚬/㚬/உ/䂻/䂻$㺴;->㚬:Z

    :cond_1
    return-void
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

    iget-boolean v0, p0, L㚬/㚬/உ/䂻/䂻$㺴;->㚬:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, L㚬/㚬/உ/䂻/䂻$㺴;->㚬:Z

    iget-object v0, p0, L㚬/㚬/உ/䂻/䂻$㺴;->㺴:L㚬/㚬/உ/䂻/䂻;

    iget-object v0, v0, L㚬/㚬/உ/䂻/䂻;->䂻:L㚬/㚬/உ/䂻/䂻$㚬;

    :goto_0
    iput-object v0, p0, L㚬/㚬/உ/䂻/䂻$㺴;->䂻:L㚬/㚬/உ/䂻/䂻$㚬;

    goto :goto_1

    :cond_0
    iget-object v0, p0, L㚬/㚬/உ/䂻/䂻$㺴;->䂻:L㚬/㚬/உ/䂻/䂻$㚬;

    if-eqz v0, :cond_1

    iget-object v0, v0, L㚬/㚬/உ/䂻/䂻$㚬;->㺴:L㚬/㚬/உ/䂻/䂻$㚬;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object v0, p0, L㚬/㚬/உ/䂻/䂻$㺴;->䂻:L㚬/㚬/உ/䂻/䂻$㚬;

    return-object v0
.end method
