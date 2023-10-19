.class public abstract L㚬/உ/䂻;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public உ:Z

.field public 䂻:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "L\u36ac/\u0b89/\u0b89;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, L㚬/உ/䂻;->䂻:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-boolean p1, p0, L㚬/உ/䂻;->உ:Z

    return-void
.end method


# virtual methods
.method public உ(L㚬/உ/உ;)V
    .locals 1

    iget-object v0, p0, L㚬/உ/䂻;->䂻:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public ḓ(L㚬/உ/உ;)V
    .locals 1

    iget-object v0, p0, L㚬/உ/䂻;->䂻:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final 㚬()Z
    .locals 1

    iget-boolean v0, p0, L㚬/உ/䂻;->உ:Z

    return v0
.end method

.method public final 㺴()V
    .locals 2

    iget-object v0, p0, L㚬/உ/䂻;->䂻:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, L㚬/உ/உ;

    invoke-interface {v1}, L㚬/உ/உ;->cancel()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract 䂻()V
.end method

.method public final 䆀(Z)V
    .locals 0

    iput-boolean p1, p0, L㚬/உ/䂻;->உ:Z

    return-void
.end method
