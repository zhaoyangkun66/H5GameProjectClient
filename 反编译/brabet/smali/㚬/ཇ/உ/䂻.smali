.class public L㚬/ཇ/உ/䂻;
.super L㚬/ཇ/உ/உ;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        L㚬/ཇ/உ/䂻$㚬;,
        L㚬/ཇ/உ/䂻$䂻;,
        L㚬/ཇ/உ/䂻$உ;
    }
.end annotation


# static fields
.field public static 㚬:Z = false


# instance fields
.field public final உ:L㚬/ἥ/ℓ;

.field public final 䂻:L㚬/ཇ/உ/䂻$㚬;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(L㚬/ἥ/ℓ;L㚬/ἥ/ḙ;)V
    .locals 0

    invoke-direct {p0}, L㚬/ཇ/உ/உ;-><init>()V

    iput-object p1, p0, L㚬/ཇ/உ/䂻;->உ:L㚬/ἥ/ℓ;

    invoke-static {p2}, L㚬/ཇ/உ/䂻$㚬;->ᆻ(L㚬/ἥ/ḙ;)L㚬/ཇ/உ/䂻$㚬;

    move-result-object p1

    iput-object p1, p0, L㚬/ཇ/உ/䂻;->䂻:L㚬/ཇ/உ/䂻$㚬;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "LoaderManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, L㚬/ཇ/உ/䂻;->உ:L㚬/ἥ/ℓ;

    invoke-static {v1, v0}, L㚬/ℓ/㹖/உ;->உ(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public உ(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, L㚬/ཇ/உ/䂻;->䂻:L㚬/ཇ/உ/䂻$㚬;

    invoke-virtual {v0, p1, p2, p3, p4}, L㚬/ཇ/உ/䂻$㚬;->䆀(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public 㚬()V
    .locals 1

    iget-object v0, p0, L㚬/ཇ/உ/䂻;->䂻:L㚬/ཇ/உ/䂻$㚬;

    invoke-virtual {v0}, L㚬/ཇ/உ/䂻$㚬;->ℓ()V

    return-void
.end method
