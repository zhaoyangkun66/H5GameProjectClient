.class public L㚬/䆀/䂻$உ;
.super L㚬/䆀/䆀;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L㚬/䆀/䂻;->㺴()L㚬/䆀/䆀;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "L\u36ac/\u4180/\u4180<",
        "TE;TE;>;"
    }
.end annotation


# instance fields
.field public final synthetic 㺴:L㚬/䆀/䂻;


# direct methods
.method public constructor <init>(L㚬/䆀/䂻;)V
    .locals 0

    iput-object p1, p0, L㚬/䆀/䂻$உ;->㺴:L㚬/䆀/䂻;

    invoke-direct {p0}, L㚬/䆀/䆀;-><init>()V

    return-void
.end method


# virtual methods
.method public உ()V
    .locals 1

    iget-object v0, p0, L㚬/䆀/䂻$உ;->㺴:L㚬/䆀/䂻;

    invoke-virtual {v0}, L㚬/䆀/䂻;->clear()V

    return-void
.end method

.method public ᆻ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation

    iget-object p2, p0, L㚬/䆀/䂻$உ;->㺴:L㚬/䆀/䂻;

    invoke-virtual {p2, p1}, L㚬/䆀/䂻;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public ḓ(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, L㚬/䆀/䂻$உ;->㺴:L㚬/䆀/䂻;

    invoke-virtual {v0, p1}, L㚬/䆀/䂻;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public ℓ(I)V
    .locals 1

    iget-object v0, p0, L㚬/䆀/䂻$உ;->㺴:L㚬/䆀/䂻;

    invoke-virtual {v0, p1}, L㚬/䆀/䂻;->ᆻ(I)Ljava/lang/Object;

    return-void
.end method

.method public ㄏ(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "not a map"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public 㚬()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TE;TE;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not a map"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public 㺴()I
    .locals 1

    iget-object v0, p0, L㚬/䆀/䂻$உ;->㺴:L㚬/䆀/䂻;

    iget v0, v0, L㚬/䆀/䂻;->㺴:I

    return v0
.end method

.method public 䂻(II)Ljava/lang/Object;
    .locals 0

    iget-object p2, p0, L㚬/䆀/䂻$உ;->㺴:L㚬/䆀/䂻;

    iget-object p2, p2, L㚬/䆀/䂻;->㚬:[Ljava/lang/Object;

    aget-object p1, p2, p1

    return-object p1
.end method

.method public 䆀(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, L㚬/䆀/䂻$உ;->㺴:L㚬/䆀/䂻;

    invoke-virtual {v0, p1}, L㚬/䆀/䂻;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
