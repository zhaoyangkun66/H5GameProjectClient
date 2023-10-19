.class public final L㺴/䂻/உ/உ/䂻/உ;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static 䂻([BLjava/lang/String;)[B
    .locals 7

    array-length v0, p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    if-lt v4, v1, :cond_0

    const/4 v4, 0x0

    :cond_0
    aget-byte v5, p0, v3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p0, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public உ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x2

    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-static {p1, v0}, L㺴/䂻/உ/உ/உ;->உ(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {v2, p2}, L㺴/䂻/உ/உ/䂻/உ;->䂻([BLjava/lang/String;)[B

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v1, Ljava/lang/String;

    invoke-static {p1, v0}, L㺴/䂻/உ/உ/உ;->உ(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-static {p1, p2}, L㺴/䂻/உ/உ/䂻/உ;->䂻([BLjava/lang/String;)[B

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    :goto_0
    return-object v1
.end method
