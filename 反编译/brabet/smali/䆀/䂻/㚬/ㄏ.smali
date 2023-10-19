.class public L䆀/䂻/㚬/ㄏ;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        L䆀/䂻/㚬/ㄏ$உ;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public உ:Landroid/content/Context;

.field public ḓ:L䆀/䂻/㚬/ㄏ$உ;

.field public 㚬:L䆀/䂻/உ/㺴;

.field public 㺴:Ljava/io/File;

.field public 䂻:Ljava/lang/String;

.field public 䆀:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;L䆀/䂻/உ/㺴;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, L䆀/䂻/㚬/ㄏ;->䂻:Ljava/lang/String;

    iput-object p1, p0, L䆀/䂻/㚬/ㄏ;->உ:Landroid/content/Context;

    iput-object p3, p0, L䆀/䂻/㚬/ㄏ;->㚬:L䆀/䂻/உ/㺴;

    new-instance p1, L䆀/䂻/㚬/ㄏ$உ;

    invoke-direct {p1, p0}, L䆀/䂻/㚬/ㄏ$உ;-><init>(L䆀/䂻/㚬/ㄏ;)V

    iput-object p1, p0, L䆀/䂻/㚬/ㄏ;->ḓ:L䆀/䂻/㚬/ㄏ$உ;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, L䆀/䂻/㚬/ㄏ;->䆀:J

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, L䆀/䂻/㚬/ㄏ;->䂻([Ljava/lang/Void;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public onCancelled()V
    .locals 0

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    return-void
.end method

.method public bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, L䆀/䂻/㚬/ㄏ;->ḓ(Ljava/lang/Long;)V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, L䆀/䂻/㚬/ㄏ;->䆀(Ljava/lang/Long;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 0

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method

.method public bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, L䆀/䂻/㚬/ㄏ;->ᆻ([Ljava/lang/Integer;)V

    return-void
.end method

.method public final உ(Ljava/io/InputStream;Ljava/io/FileOutputStream;)I
    .locals 7

    const v0, 0x19000

    new-array v1, v0, [B

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {v2, v1, v3, v0}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return v4

    :cond_0
    :try_start_1
    invoke-virtual {p2, v1, v3, v5}, Ljava/io/FileOutputStream;->write([BII)V

    add-int/2addr v4, v5

    iget-object v5, p0, L䆀/䂻/㚬/ㄏ;->ḓ:L䆀/䂻/㚬/ㄏ$உ;

    iput v4, v5, L䆀/䂻/㚬/ㄏ$உ;->㚬:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {p0, v5}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw v0
.end method

.method public varargs ᆻ([Ljava/lang/Integer;)V
    .locals 6

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, L䆀/䂻/㚬/ㄏ;->䆀:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x384

    cmp-long p1, v2, v4

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    iput-wide v0, p0, L䆀/䂻/㚬/ㄏ;->䆀:J

    iget-object p1, p0, L䆀/䂻/㚬/ㄏ;->㚬:L䆀/䂻/உ/㺴;

    iget-object v0, p0, L䆀/䂻/㚬/ㄏ;->ḓ:L䆀/䂻/㚬/ㄏ$உ;

    iget v1, v0, L䆀/䂻/㚬/ㄏ$உ;->㚬:I

    int-to-double v1, v1

    const-wide/16 v3, 0x0

    add-double/2addr v1, v3

    iget v0, v0, L䆀/䂻/㚬/ㄏ$உ;->உ:I

    int-to-double v3, v0

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double v1, v1, v3

    double-to-int v0, v1

    invoke-interface {p1, v0}, L䆀/䂻/உ/㺴;->䂻(I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, L䆀/䂻/㚬/ㄏ;->㚬:L䆀/䂻/உ/㺴;

    invoke-interface {p1}, L䆀/䂻/உ/㺴;->㚬()V

    :goto_0
    return-void
.end method

.method public ḓ(Ljava/lang/Long;)V
    .locals 0

    return-void
.end method

.method public final 㚬(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p2

    check-cast p2, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v1, "IAICBBEV"

    invoke-static {v1}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ABERDQgCABUIDg9OSw=="

    invoke-static {v2}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x2710

    invoke-virtual {p2, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->connect()V

    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FBEFABUEPg=="

    invoke-static {v3}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "TwARCg=="

    invoke-static {v3}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object p1, p0, L䆀/䂻/㚬/ㄏ;->ḓ:L䆀/䂻/㚬/ㄏ$உ;

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    iput v2, p1, L䆀/䂻/㚬/ㄏ$உ;->உ:I

    iget-object p1, p0, L䆀/䂻/㚬/ㄏ;->ḓ:L䆀/䂻/㚬/ㄏ$உ;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p1, L䆀/䂻/㚬/ㄏ$உ;->䂻:J

    const/4 p1, 0x1

    new-array v2, p1, [Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {p0, v2}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, p1, v2}, L䆀/䂻/㚬/ㄏ;->உ(Ljava/io/InputStream;Ljava/io/FileOutputStream;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    move-object p2, v0

    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-object v0

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/net/MalformedURLException;->printStackTrace()V

    return-object v0
.end method

.method public final 㺴(Landroid/content/Context;Ljava/io/File;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "AA8FEw4IBU8IDxUEDxVPAAIVCA4PTzcoJDY="

    invoke-static {v1}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v2, "ABERDQgCABUIDg9OFw8FTwAPBRMOCAVPEQACCgAGBEwAEwIJCBcE"

    const/16 v3, 0x18

    if-ge v1, v3, :cond_0

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {v2}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, p2}, Lorg/games/app/FileProvider;->ḓ(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {v2}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x1

    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :goto_0
    const/high16 p2, 0x10000000

    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public varargs 䂻([Ljava/lang/Void;)Ljava/lang/Long;
    .locals 1

    iget-object p1, p0, L䆀/䂻/㚬/ㄏ;->உ:Landroid/content/Context;

    iget-object v0, p0, L䆀/䂻/㚬/ㄏ;->䂻:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, L䆀/䂻/㚬/ㄏ;->㚬(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, L䆀/䂻/㚬/ㄏ;->㺴:Ljava/io/File;

    const/4 p1, 0x0

    return-object p1
.end method

.method public 䆀(Ljava/lang/Long;)V
    .locals 1

    iget-object p1, p0, L䆀/䂻/㚬/ㄏ;->㚬:L䆀/䂻/உ/㺴;

    invoke-interface {p1}, L䆀/䂻/உ/㺴;->உ()V

    iget-object p1, p0, L䆀/䂻/㚬/ㄏ;->㺴:Ljava/io/File;

    if-eqz p1, :cond_0

    iget-object v0, p0, L䆀/䂻/㚬/ㄏ;->உ:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, L䆀/䂻/㚬/ㄏ;->㺴(Landroid/content/Context;Ljava/io/File;)V

    goto :goto_0

    :cond_0
    const-string p1, "BBMTDhM="

    invoke-static {p1}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "BQ4WDw0OAAVBJwgNBEEnAAgNBAU="

    invoke-static {v0}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
