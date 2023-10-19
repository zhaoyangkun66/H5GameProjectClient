.class public L㚬/䆀/உ$உ;
.super L㚬/䆀/䆀;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L㚬/䆀/உ;->ཇ()L㚬/䆀/䆀;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "L\u36ac/\u4180/\u4180<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic 㺴:L㚬/䆀/உ;


# direct methods
.method public constructor <init>(L㚬/䆀/உ;)V
    .locals 0

    iput-object p1, p0, L㚬/䆀/உ$உ;->㺴:L㚬/䆀/உ;

    invoke-direct {p0}, L㚬/䆀/䆀;-><init>()V

    return-void
.end method


# virtual methods
.method public உ()V
    .locals 1

    iget-object v0, p0, L㚬/䆀/உ$உ;->㺴:L㚬/䆀/உ;

    invoke-virtual {v0}, L㚬/䆀/ᆻ;->clear()V

    return-void
.end method

.method public ᆻ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    iget-object v0, p0, L㚬/䆀/உ$உ;->㺴:L㚬/䆀/உ;

    invoke-virtual {v0, p1, p2}, L㚬/䆀/ᆻ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public ḓ(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, L㚬/䆀/உ$உ;->㺴:L㚬/䆀/உ;

    invoke-virtual {v0, p1}, L㚬/䆀/ᆻ;->䆀(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public ℓ(I)V
    .locals 1

    iget-object v0, p0, L㚬/䆀/உ$உ;->㺴:L㚬/䆀/உ;

    invoke-virtual {v0, p1}, L㚬/䆀/ᆻ;->㧦(I)Ljava/lang/Object;

    return-void
.end method

.method public ㄏ(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    iget-object v0, p0, L㚬/䆀/உ$உ;->㺴:L㚬/䆀/உ;

    invoke-virtual {v0, p1, p2}, L㚬/䆀/ᆻ;->㹖(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public 㚬()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, L㚬/䆀/உ$உ;->㺴:L㚬/䆀/உ;

    return-object v0
.end method

.method public 㺴()I
    .locals 1

    iget-object v0, p0, L㚬/䆀/உ$உ;->㺴:L㚬/䆀/உ;

    iget v0, v0, L㚬/䆀/ᆻ;->㺴:I

    return v0
.end method

.method public 䂻(II)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, L㚬/䆀/உ$உ;->㺴:L㚬/䆀/உ;

    iget-object v0, v0, L㚬/䆀/ᆻ;->㚬:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr p1, p2

    aget-object p1, v0, p1

    return-object p1
.end method

.method public 䆀(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, L㚬/䆀/உ$உ;->㺴:L㚬/䆀/உ;

    invoke-virtual {v0, p1}, L㚬/䆀/ᆻ;->ℓ(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
