.class public final L㺴/㚬/䂻/ἥ/䂻/䂻;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final உ:[B

.field public 䂻:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [B

    iput-object p1, p0, L㺴/㚬/䂻/ἥ/䂻/䂻;->உ:[B

    const/4 p1, 0x0

    iput p1, p0, L㺴/㚬/䂻/ἥ/䂻/䂻;->䂻:I

    return-void
.end method


# virtual methods
.method public உ(ZI)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    iget v1, p0, L㺴/㚬/䂻/ἥ/䂻/䂻;->䂻:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, L㺴/㚬/䂻/ἥ/䂻/䂻;->䂻:I

    invoke-virtual {p0, v1, p1}, L㺴/㚬/䂻/ἥ/䂻/䂻;->㚬(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final 㚬(IZ)V
    .locals 1

    iget-object v0, p0, L㺴/㚬/䂻/ἥ/䂻/䂻;->உ:[B

    int-to-byte p2, p2

    aput-byte p2, v0, p1

    return-void
.end method

.method public 䂻(I)[B
    .locals 5

    iget-object v0, p0, L㺴/㚬/䂻/ἥ/䂻/䂻;->உ:[B

    array-length v0, v0

    mul-int v0, v0, p1

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, L㺴/㚬/䂻/ἥ/䂻/䂻;->உ:[B

    div-int v4, v2, p1

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
