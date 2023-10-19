.class public final Lḓ/ཇ/ḓ$䂻;
.super Lḓ/㹖/䂻;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lḓ/ཇ/ḓ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "\u40bb"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lḓ/ཇ/ḓ$䂻$உ;,
        Lḓ/ཇ/ḓ$䂻$㚬;,
        Lḓ/ཇ/ḓ$䂻$䂻;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "L\u1e13/\u3e56/\u40bb<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic ḓ:Lḓ/ཇ/ḓ;

.field public final 㺴:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "L\u1e13/\u0f47/\u1e13$\u36ac;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lḓ/ཇ/ḓ;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lḓ/ཇ/ḓ$䂻;->ḓ:Lḓ/ཇ/ḓ;

    invoke-direct {p0}, Lḓ/㹖/䂻;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lḓ/ཇ/ḓ$䂻;->㺴:Ljava/util/ArrayDeque;

    invoke-static {p1}, Lḓ/ཇ/ḓ;->䆀(Lḓ/ཇ/ḓ;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lḓ/ཇ/ḓ;->䆀(Lḓ/ཇ/ḓ;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Lḓ/ཇ/ḓ$䂻;->ḓ(Ljava/io/File;)Lḓ/ཇ/ḓ$உ;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lḓ/ཇ/ḓ;->䆀(Lḓ/ཇ/ḓ;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lḓ/ཇ/ḓ$䂻$䂻;

    invoke-static {p1}, Lḓ/ཇ/ḓ;->䆀(Lḓ/ཇ/ḓ;)Ljava/io/File;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lḓ/ཇ/ḓ$䂻$䂻;-><init>(Lḓ/ཇ/ḓ$䂻;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lḓ/㹖/䂻;->䂻()V

    :goto_0
    return-void
.end method


# virtual methods
.method public உ()V
    .locals 1

    invoke-virtual {p0}, Lḓ/ཇ/ḓ$䂻;->䆀()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lḓ/㹖/䂻;->㚬(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lḓ/㹖/䂻;->䂻()V

    :goto_0
    return-void
.end method

.method public final ḓ(Ljava/io/File;)Lḓ/ཇ/ḓ$உ;
    .locals 2

    iget-object v0, p0, Lḓ/ཇ/ḓ$䂻;->ḓ:Lḓ/ཇ/ḓ;

    invoke-static {v0}, Lḓ/ཇ/ḓ;->உ(Lḓ/ཇ/ḓ;)Lḓ/ཇ/ᆻ;

    move-result-object v0

    sget-object v1, Lḓ/ཇ/䆀;->உ:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    new-instance v0, Lḓ/ཇ/ḓ$䂻$உ;

    invoke-direct {v0, p0, p1}, Lḓ/ཇ/ḓ$䂻$உ;-><init>(Lḓ/ཇ/ḓ$䂻;Ljava/io/File;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lḓ/ḓ;

    invoke-direct {p1}, Lḓ/ḓ;-><init>()V

    throw p1

    :cond_1
    new-instance v0, Lḓ/ཇ/ḓ$䂻$㚬;

    invoke-direct {v0, p0, p1}, Lḓ/ཇ/ḓ$䂻$㚬;-><init>(Lḓ/ཇ/ḓ$䂻;Ljava/io/File;)V

    :goto_0
    return-object v0
.end method

.method public final 䆀()Ljava/io/File;
    .locals 3

    :goto_0
    iget-object v0, p0, Lḓ/ཇ/ḓ$䂻;->㺴:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lḓ/ཇ/ḓ$㚬;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lḓ/ཇ/ḓ$㚬;->䂻()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lḓ/ཇ/ḓ$䂻;->㺴:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lḓ/ཇ/ḓ$㚬;->உ()Ljava/io/File;

    move-result-object v0

    invoke-static {v1, v0}, Lḓ/ᓭ/㺴/ಫ;->உ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lḓ/ཇ/ḓ$䂻;->㺴:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    iget-object v2, p0, Lḓ/ཇ/ḓ$䂻;->ḓ:Lḓ/ཇ/ḓ;

    invoke-static {v2}, Lḓ/ཇ/ḓ;->䂻(Lḓ/ཇ/ḓ;)I

    move-result v2

    if-lt v0, v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lḓ/ཇ/ḓ$䂻;->㺴:Ljava/util/ArrayDeque;

    invoke-virtual {p0, v1}, Lḓ/ཇ/ḓ$䂻;->ḓ(Ljava/io/File;)Lḓ/ཇ/ḓ$உ;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method
