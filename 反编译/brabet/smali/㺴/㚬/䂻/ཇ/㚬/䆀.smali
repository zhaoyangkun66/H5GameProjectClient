.class public final L㺴/㚬/䂻/ཇ/㚬/䆀;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public உ:L㺴/㚬/䂻/ཇ/䂻/䂻;

.field public ḓ:L㺴/㚬/䂻/ཇ/㚬/䂻;

.field public 㚬:L㺴/㚬/䂻/ཇ/䂻/㚬;

.field public 㺴:I

.field public 䂻:L㺴/㚬/䂻/ཇ/䂻/உ;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, L㺴/㚬/䂻/ཇ/㚬/䆀;->㺴:I

    return-void
.end method

.method public static 䂻(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x8

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "<<\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, L㺴/㚬/䂻/ཇ/㚬/䆀;->உ:L㺴/㚬/䂻/ཇ/䂻/䂻;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n ecLevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, L㺴/㚬/䂻/ཇ/㚬/䆀;->䂻:L㺴/㚬/䂻/ཇ/䂻/உ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, L㺴/㚬/䂻/ཇ/㚬/䆀;->㚬:L㺴/㚬/䂻/ཇ/䂻/㚬;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n maskPattern: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, L㺴/㚬/䂻/ཇ/㚬/䆀;->㺴:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, L㺴/㚬/䂻/ཇ/㚬/䆀;->ḓ:L㺴/㚬/䂻/ཇ/㚬/䂻;

    if-nez v1, :cond_0

    const-string v1, "\n matrix: null\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "\n matrix:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, L㺴/㚬/䂻/ཇ/㚬/䆀;->ḓ:L㺴/㚬/䂻/ཇ/㚬/䂻;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ">>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public உ()L㺴/㚬/䂻/ཇ/㚬/䂻;
    .locals 1

    iget-object v0, p0, L㺴/㚬/䂻/ཇ/㚬/䆀;->ḓ:L㺴/㚬/䂻/ཇ/㚬/䂻;

    return-object v0
.end method

.method public ᆻ(L㺴/㚬/䂻/ཇ/䂻/㚬;)V
    .locals 0

    iput-object p1, p0, L㺴/㚬/䂻/ཇ/㚬/䆀;->㚬:L㺴/㚬/䂻/ཇ/䂻/㚬;

    return-void
.end method

.method public ḓ(L㺴/㚬/䂻/ཇ/㚬/䂻;)V
    .locals 0

    iput-object p1, p0, L㺴/㚬/䂻/ཇ/㚬/䆀;->ḓ:L㺴/㚬/䂻/ཇ/㚬/䂻;

    return-void
.end method

.method public 㚬(L㺴/㚬/䂻/ཇ/䂻/உ;)V
    .locals 0

    iput-object p1, p0, L㺴/㚬/䂻/ཇ/㚬/䆀;->䂻:L㺴/㚬/䂻/ཇ/䂻/உ;

    return-void
.end method

.method public 㺴(I)V
    .locals 0

    iput p1, p0, L㺴/㚬/䂻/ཇ/㚬/䆀;->㺴:I

    return-void
.end method

.method public 䆀(L㺴/㚬/䂻/ཇ/䂻/䂻;)V
    .locals 0

    iput-object p1, p0, L㺴/㚬/䂻/ཇ/㚬/䆀;->உ:L㺴/㚬/䂻/ཇ/䂻/䂻;

    return-void
.end method
