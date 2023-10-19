.class public L㚬/ཇ/உ/䂻$உ;
.super L㚬/ἥ/ἥ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/ཇ/உ/䂻;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u0b89"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "L\u36ac/\u1f25/\u1f25<",
        "TD;>;",
        "Ljava/lang/Object<",
        "TD;>;"
    }
.end annotation


# instance fields
.field public ཇ:L㚬/ἥ/ℓ;

.field public ბ:L㚬/ཇ/䂻/உ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "L\u36ac/\u0f47/\u40bb/\u0b89<",
            "TD;>;"
        }
    .end annotation
.end field

.field public ᓭ:L㚬/ཇ/உ/䂻$䂻;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "L\u36ac/\u0f47/\u0b89/\u40bb$\u40bb<",
            "TD;>;"
        }
    .end annotation
.end field

.field public final ἥ:L㚬/ཇ/䂻/உ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "L\u36ac/\u0f47/\u40bb/\u0b89<",
            "TD;>;"
        }
    .end annotation
.end field

.field public final 㧦:I

.field public final 㹖:Landroid/os/Bundle;


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "LoaderInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, L㚬/ཇ/உ/䂻$உ;->㧦:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, L㚬/ཇ/உ/䂻$உ;->ἥ:L㚬/ཇ/䂻/உ;

    invoke-static {v1, v0}, L㚬/ℓ/㹖/உ;->உ(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ಫ(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    invoke-super {p0, p1}, L㚬/ἥ/ἥ;->ಫ(Ljava/lang/Object;)V

    iget-object p1, p0, L㚬/ཇ/உ/䂻$உ;->ბ:L㚬/ཇ/䂻/உ;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, L㚬/ཇ/䂻/உ;->㚬()V

    const/4 p1, 0x0

    throw p1
.end method

.method public ᆻ()V
    .locals 2

    sget-boolean v0, L㚬/ཇ/உ/䂻;->㚬:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Starting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoaderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, L㚬/ཇ/உ/䂻$உ;->ἥ:L㚬/ཇ/䂻/உ;

    invoke-virtual {v0}, L㚬/ཇ/䂻/உ;->㺴()V

    const/4 v0, 0x0

    throw v0
.end method

.method public ἥ()V
    .locals 2

    iget-object v0, p0, L㚬/ཇ/உ/䂻$உ;->ཇ:L㚬/ἥ/ℓ;

    iget-object v1, p0, L㚬/ཇ/உ/䂻$உ;->ᓭ:L㚬/ཇ/உ/䂻$䂻;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-super {p0, v1}, Landroidx/lifecycle/LiveData;->ㄏ(L㚬/ἥ/ཇ;)V

    invoke-virtual {p0, v0, v1}, Landroidx/lifecycle/LiveData;->ḓ(L㚬/ἥ/ℓ;L㚬/ἥ/ཇ;)V

    :cond_0
    return-void
.end method

.method public ℓ()V
    .locals 2

    sget-boolean v0, L㚬/ཇ/உ/䂻;->㚬:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Stopping: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoaderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, L㚬/ཇ/உ/䂻$உ;->ἥ:L㚬/ཇ/䂻/உ;

    invoke-virtual {v0}, L㚬/ཇ/䂻/உ;->ḓ()V

    const/4 v0, 0x0

    throw v0
.end method

.method public ㄏ(L㚬/ἥ/ཇ;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "L\u36ac/\u1f25/\u0f47<",
            "-TD;>;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroidx/lifecycle/LiveData;->ㄏ(L㚬/ἥ/ཇ;)V

    const/4 p1, 0x0

    iput-object p1, p0, L㚬/ཇ/உ/䂻$உ;->ཇ:L㚬/ἥ/ℓ;

    return-void
.end method

.method public 㧦(Z)L㚬/ཇ/䂻/உ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "L\u36ac/\u0f47/\u40bb/\u0b89<",
            "TD;>;"
        }
    .end annotation

    sget-boolean p1, L㚬/ཇ/உ/䂻;->㚬:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  Destroying: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LoaderManager"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, L㚬/ཇ/உ/䂻$உ;->ἥ:L㚬/ཇ/䂻/உ;

    invoke-virtual {p1}, L㚬/ཇ/䂻/உ;->உ()Z

    const/4 p1, 0x0

    throw p1
.end method

.method public 㹖(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, L㚬/ཇ/உ/䂻$உ;->㧦:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mArgs="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, L㚬/ཇ/உ/䂻$உ;->㹖:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLoader="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, L㚬/ཇ/உ/䂻$உ;->ἥ:L㚬/ཇ/䂻/உ;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v0, p0, L㚬/ཇ/உ/䂻$உ;->ἥ:L㚬/ཇ/䂻/உ;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3, p4}, L㚬/ཇ/䂻/உ;->䂻(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
