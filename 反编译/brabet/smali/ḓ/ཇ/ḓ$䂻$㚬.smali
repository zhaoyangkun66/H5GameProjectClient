.class public final Lḓ/ཇ/ḓ$䂻$㚬;
.super Lḓ/ཇ/ḓ$உ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lḓ/ཇ/ḓ$䂻;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "\u36ac"
.end annotation


# instance fields
.field public final synthetic ḓ:Lḓ/ཇ/ḓ$䂻;

.field public 㚬:[Ljava/io/File;

.field public 㺴:I

.field public 䂻:Z


# direct methods
.method public constructor <init>(Lḓ/ཇ/ḓ$䂻;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    const-string v0, "rootDir"

    invoke-static {p2, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lḓ/ཇ/ḓ$䂻$㚬;->ḓ:Lḓ/ཇ/ḓ$䂻;

    invoke-direct {p0, p2}, Lḓ/ཇ/ḓ$உ;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public 䂻()Ljava/io/File;
    .locals 10

    iget-boolean v0, p0, Lḓ/ཇ/ḓ$䂻$㚬;->䂻:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lḓ/ཇ/ḓ$䂻$㚬;->ḓ:Lḓ/ཇ/ḓ$䂻;

    iget-object v0, v0, Lḓ/ཇ/ḓ$䂻;->ḓ:Lḓ/ཇ/ḓ;

    invoke-static {v0}, Lḓ/ཇ/ḓ;->㚬(Lḓ/ཇ/ḓ;)Lḓ/ᓭ/㚬/㹖;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lḓ/ཇ/ḓ$㚬;->உ()Ljava/io/File;

    move-result-object v2

    invoke-interface {v0, v2}, Lḓ/ᓭ/㚬/㹖;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lḓ/ཇ/ḓ$䂻$㚬;->䂻:Z

    invoke-virtual {p0}, Lḓ/ཇ/ḓ$㚬;->உ()Ljava/io/File;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lḓ/ཇ/ḓ$䂻$㚬;->㚬:[Ljava/io/File;

    if-eqz v0, :cond_4

    iget v2, p0, Lḓ/ཇ/ḓ$䂻$㚬;->㺴:I

    invoke-static {v0}, Lḓ/ᓭ/㺴/ಫ;->䂻(Ljava/lang/Object;)V

    array-length v0, v0

    if-ge v2, v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lḓ/ཇ/ḓ$䂻$㚬;->ḓ:Lḓ/ཇ/ḓ$䂻;

    iget-object v0, v0, Lḓ/ཇ/ḓ$䂻;->ḓ:Lḓ/ཇ/ḓ;

    invoke-static {v0}, Lḓ/ཇ/ḓ;->ḓ(Lḓ/ཇ/ḓ;)Lḓ/ᓭ/㚬/㹖;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lḓ/ཇ/ḓ$㚬;->உ()Ljava/io/File;

    move-result-object v2

    invoke-interface {v0, v2}, Lḓ/ᓭ/㚬/㹖;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lḓ/㧦;

    :cond_3
    return-object v1

    :cond_4
    :goto_0
    iget-object v0, p0, Lḓ/ཇ/ḓ$䂻$㚬;->㚬:[Ljava/io/File;

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lḓ/ཇ/ḓ$㚬;->உ()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lḓ/ཇ/ḓ$䂻$㚬;->㚬:[Ljava/io/File;

    if-nez v0, :cond_5

    iget-object v0, p0, Lḓ/ཇ/ḓ$䂻$㚬;->ḓ:Lḓ/ཇ/ḓ$䂻;

    iget-object v0, v0, Lḓ/ཇ/ḓ$䂻;->ḓ:Lḓ/ཇ/ḓ;

    invoke-static {v0}, Lḓ/ཇ/ḓ;->㺴(Lḓ/ཇ/ḓ;)Lḓ/ᓭ/㚬/ბ;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lḓ/ཇ/ḓ$㚬;->உ()Ljava/io/File;

    move-result-object v2

    new-instance v9, Lḓ/ཇ/உ;

    invoke-virtual {p0}, Lḓ/ཇ/ḓ$㚬;->உ()Ljava/io/File;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    const-string v6, "Cannot list files in a directory"

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lḓ/ཇ/உ;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;ILḓ/ᓭ/㺴/ᆻ;)V

    invoke-interface {v0, v2, v9}, Lḓ/ᓭ/㚬/ბ;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lḓ/㧦;

    :cond_5
    iget-object v0, p0, Lḓ/ཇ/ḓ$䂻$㚬;->㚬:[Ljava/io/File;

    if-eqz v0, :cond_6

    invoke-static {v0}, Lḓ/ᓭ/㺴/ಫ;->䂻(Ljava/lang/Object;)V

    array-length v0, v0

    if-nez v0, :cond_8

    :cond_6
    iget-object v0, p0, Lḓ/ཇ/ḓ$䂻$㚬;->ḓ:Lḓ/ཇ/ḓ$䂻;

    iget-object v0, v0, Lḓ/ཇ/ḓ$䂻;->ḓ:Lḓ/ཇ/ḓ;

    invoke-static {v0}, Lḓ/ཇ/ḓ;->ḓ(Lḓ/ཇ/ḓ;)Lḓ/ᓭ/㚬/㹖;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lḓ/ཇ/ḓ$㚬;->உ()Ljava/io/File;

    move-result-object v2

    invoke-interface {v0, v2}, Lḓ/ᓭ/㚬/㹖;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lḓ/㧦;

    :cond_7
    return-object v1

    :cond_8
    iget-object v0, p0, Lḓ/ཇ/ḓ$䂻$㚬;->㚬:[Ljava/io/File;

    invoke-static {v0}, Lḓ/ᓭ/㺴/ಫ;->䂻(Ljava/lang/Object;)V

    iget v1, p0, Lḓ/ཇ/ḓ$䂻$㚬;->㺴:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lḓ/ཇ/ḓ$䂻$㚬;->㺴:I

    aget-object v0, v0, v1

    return-object v0
.end method
