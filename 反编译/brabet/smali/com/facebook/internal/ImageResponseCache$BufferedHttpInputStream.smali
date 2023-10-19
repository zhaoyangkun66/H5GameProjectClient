.class public final Lcom/facebook/internal/ImageResponseCache$BufferedHttpInputStream;
.super Ljava/io/BufferedInputStream;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/ImageResponseCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BufferedHttpInputStream"
.end annotation


# instance fields
.field private connection:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V
    .locals 1

    const-string v0, "connection"

    invoke-static {p2, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object p2, p0, Lcom/facebook/internal/ImageResponseCache$BufferedHttpInputStream;->connection:Ljava/net/HttpURLConnection;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    invoke-super {p0}, Ljava/io/BufferedInputStream;->close()V

    sget-object v0, Lcom/facebook/internal/Utility;->INSTANCE:Lcom/facebook/internal/Utility;

    iget-object v0, p0, Lcom/facebook/internal/ImageResponseCache$BufferedHttpInputStream;->connection:Ljava/net/HttpURLConnection;

    invoke-static {v0}, Lcom/facebook/internal/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V

    return-void
.end method

.method public final getConnection()Ljava/net/HttpURLConnection;
    .locals 1

    iget-object v0, p0, Lcom/facebook/internal/ImageResponseCache$BufferedHttpInputStream;->connection:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method public final setConnection(Ljava/net/HttpURLConnection;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/facebook/internal/ImageResponseCache$BufferedHttpInputStream;->connection:Ljava/net/HttpURLConnection;

    return-void
.end method
