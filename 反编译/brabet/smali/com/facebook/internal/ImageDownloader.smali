.class public final Lcom/facebook/internal/ImageDownloader;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/ImageDownloader$RequestKey;,
        Lcom/facebook/internal/ImageDownloader$DownloaderContext;,
        Lcom/facebook/internal/ImageDownloader$CacheReadWorkItem;,
        Lcom/facebook/internal/ImageDownloader$DownloadImageWorkItem;
    }
.end annotation


# static fields
.field private static final CACHE_READ_QUEUE_MAX_CONCURRENT:I = 0x2

.field private static final DOWNLOAD_QUEUE_MAX_CONCURRENT:I = 0x8

.field public static final INSTANCE:Lcom/facebook/internal/ImageDownloader;

.field private static final cacheReadQueue:Lcom/facebook/internal/WorkQueue;

.field private static final downloadQueue:Lcom/facebook/internal/WorkQueue;

.field private static handler:Landroid/os/Handler;

.field private static final pendingRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/facebook/internal/ImageDownloader$RequestKey;",
            "Lcom/facebook/internal/ImageDownloader$DownloaderContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/facebook/internal/ImageDownloader;

    invoke-direct {v0}, Lcom/facebook/internal/ImageDownloader;-><init>()V

    sput-object v0, Lcom/facebook/internal/ImageDownloader;->INSTANCE:Lcom/facebook/internal/ImageDownloader;

    new-instance v0, Lcom/facebook/internal/WorkQueue;

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/facebook/internal/WorkQueue;-><init>(ILjava/util/concurrent/Executor;ILḓ/ᓭ/㺴/ᆻ;)V

    sput-object v0, Lcom/facebook/internal/ImageDownloader;->downloadQueue:Lcom/facebook/internal/WorkQueue;

    new-instance v0, Lcom/facebook/internal/WorkQueue;

    invoke-direct {v0, v3, v2, v3, v2}, Lcom/facebook/internal/WorkQueue;-><init>(ILjava/util/concurrent/Executor;ILḓ/ᓭ/㺴/ᆻ;)V

    sput-object v0, Lcom/facebook/internal/ImageDownloader;->cacheReadQueue:Lcom/facebook/internal/WorkQueue;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$download(Lcom/facebook/internal/ImageDownloader;Lcom/facebook/internal/ImageDownloader$RequestKey;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/internal/ImageDownloader;->download(Lcom/facebook/internal/ImageDownloader$RequestKey;)V

    return-void
.end method

.method public static final synthetic access$readFromCache(Lcom/facebook/internal/ImageDownloader;Lcom/facebook/internal/ImageDownloader$RequestKey;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/facebook/internal/ImageDownloader;->readFromCache(Lcom/facebook/internal/ImageDownloader$RequestKey;Z)V

    return-void
.end method

.method public static final cancelRequest(Lcom/facebook/internal/ImageRequest;)Z
    .locals 4

    const-string v0, "request"

    invoke-static {p0, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/internal/ImageDownloader$RequestKey;

    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->getImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->getCallerTag()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/facebook/internal/ImageDownloader$RequestKey;-><init>(Landroid/net/Uri;Ljava/lang/Object;)V

    sget-object p0, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    monitor-enter p0

    :try_start_0
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/internal/ImageDownloader$DownloaderContext;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->getWorkItem()Lcom/facebook/internal/WorkQueue$WorkItem;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/facebook/internal/WorkQueue$WorkItem;->cancel()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->setCancelled(Z)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    sget-object v0, Lḓ/㧦;->உ:Lḓ/㧦;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static final clearCache()V
    .locals 1

    sget-object v0, Lcom/facebook/internal/ImageResponseCache;->INSTANCE:Lcom/facebook/internal/ImageResponseCache;

    invoke-static {}, Lcom/facebook/internal/ImageResponseCache;->clearCache()V

    sget-object v0, Lcom/facebook/internal/UrlRedirectCache;->INSTANCE:Lcom/facebook/internal/UrlRedirectCache;

    invoke-static {}, Lcom/facebook/internal/UrlRedirectCache;->clearCache()V

    return-void
.end method

.method private final download(Lcom/facebook/internal/ImageDownloader$RequestKey;)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/facebook/internal/ImageDownloader$RequestKey;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    if-eqz v3, :cond_5

    check-cast v3, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v3, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_4

    const/16 v5, 0x12d

    if-eq v4, v5, :cond_2

    const/16 v5, 0x12e

    if-eq v4, v5, :cond_2

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v4, :cond_1

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v7, 0x80

    new-array v8, v7, [C

    :goto_0
    invoke-virtual {v6, v8, v1, v7}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v9

    if-lez v9, :cond_0

    invoke-virtual {v5, v8, v1, v9}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    sget-object v7, Lcom/facebook/internal/Utility;->INSTANCE:Lcom/facebook/internal/Utility;

    invoke-static {v6}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    :cond_1
    const-string v6, "Unexpected error while downloading an image."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    new-instance v6, Lcom/facebook/FacebookException;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v5, v0

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v0, v4

    goto/16 :goto_4

    :catch_0
    move-exception v5

    goto/16 :goto_5

    :cond_2
    :try_start_3
    const-string v2, "location"

    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/facebook/internal/Utility;->INSTANCE:Lcom/facebook/internal/Utility;

    invoke-static {v2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v4, Lcom/facebook/internal/UrlRedirectCache;->INSTANCE:Lcom/facebook/internal/UrlRedirectCache;

    invoke-virtual {p1}, Lcom/facebook/internal/ImageDownloader$RequestKey;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/facebook/internal/UrlRedirectCache;->cacheUriRedirect(Landroid/net/Uri;Landroid/net/Uri;)V

    invoke-direct {p0, p1}, Lcom/facebook/internal/ImageDownloader;->removePendingRequest(Lcom/facebook/internal/ImageDownloader$RequestKey;)Lcom/facebook/internal/ImageDownloader$DownloaderContext;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->getRequest()Lcom/facebook/internal/ImageRequest;

    move-result-object v4

    new-instance v5, Lcom/facebook/internal/ImageDownloader$RequestKey;

    const-string v6, "redirectUri"

    invoke-static {v2, v6}, Lḓ/ᓭ/㺴/ಫ;->㚬(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/internal/ImageDownloader$RequestKey;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Lcom/facebook/internal/ImageDownloader$RequestKey;-><init>(Landroid/net/Uri;Ljava/lang/Object;)V

    invoke-direct {p0, v4, v5, v1}, Lcom/facebook/internal/ImageDownloader;->enqueueCacheRead(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;Z)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_3
    move-object v5, v0

    move-object v6, v5

    const/4 v2, 0x0

    goto :goto_3

    :catch_1
    move-exception v5

    move-object v4, v0

    const/4 v2, 0x0

    goto :goto_5

    :cond_4
    :try_start_4
    sget-object v4, Lcom/facebook/internal/ImageResponseCache;->INSTANCE:Lcom/facebook/internal/ImageResponseCache;

    invoke-static {v3}, Lcom/facebook/internal/ImageResponseCache;->interceptAndCacheImageStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v6, v0

    :goto_2
    move-object v0, v4

    :goto_3
    sget-object v4, Lcom/facebook/internal/Utility;->INSTANCE:Lcom/facebook/internal/Utility;

    invoke-static {v0}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/facebook/internal/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V

    move-object v0, v5

    goto :goto_6

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_2
    move-exception v5

    move-object v4, v0

    goto :goto_5

    :cond_5
    :try_start_6
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    move-object v3, v0

    :goto_4
    sget-object v1, Lcom/facebook/internal/Utility;->INSTANCE:Lcom/facebook/internal/Utility;

    invoke-static {v0}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/facebook/internal/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V

    throw p1

    :catch_3
    move-exception v5

    move-object v3, v0

    move-object v4, v3

    :goto_5
    sget-object v6, Lcom/facebook/internal/Utility;->INSTANCE:Lcom/facebook/internal/Utility;

    invoke-static {v4}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/facebook/internal/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V

    move-object v6, v5

    :goto_6
    if-eqz v2, :cond_6

    invoke-direct {p0, p1, v6, v0, v1}, Lcom/facebook/internal/ImageDownloader;->issueResponse(Lcom/facebook/internal/ImageDownloader$RequestKey;Ljava/lang/Exception;Landroid/graphics/Bitmap;Z)V

    :cond_6
    return-void
.end method

.method public static final downloadAsync(Lcom/facebook/internal/ImageRequest;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/facebook/internal/ImageDownloader$RequestKey;

    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->getImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->getCallerTag()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/internal/ImageDownloader$RequestKey;-><init>(Landroid/net/Uri;Ljava/lang/Object;)V

    sget-object v1, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/internal/ImageDownloader$DownloaderContext;

    if-eqz v2, :cond_2

    invoke-virtual {v2, p0}, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->setRequest(Lcom/facebook/internal/ImageRequest;)V

    const/4 p0, 0x0

    invoke-virtual {v2, p0}, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->setCancelled(Z)V

    invoke-virtual {v2}, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->getWorkItem()Lcom/facebook/internal/WorkQueue$WorkItem;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Lcom/facebook/internal/WorkQueue$WorkItem;->moveToFront()V

    :goto_0
    sget-object p0, Lḓ/㧦;->உ:Lḓ/㧦;

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/facebook/internal/ImageDownloader;->INSTANCE:Lcom/facebook/internal/ImageDownloader;

    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->isCachedRedirectAllowed()Z

    move-result v3

    invoke-direct {v2, p0, v0, v3}, Lcom/facebook/internal/ImageDownloader;->enqueueCacheRead(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0
.end method

.method private final enqueueCacheRead(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;Z)V
    .locals 2

    sget-object v0, Lcom/facebook/internal/ImageDownloader;->cacheReadQueue:Lcom/facebook/internal/WorkQueue;

    new-instance v1, Lcom/facebook/internal/ImageDownloader$CacheReadWorkItem;

    invoke-direct {v1, p2, p3}, Lcom/facebook/internal/ImageDownloader$CacheReadWorkItem;-><init>(Lcom/facebook/internal/ImageDownloader$RequestKey;Z)V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/facebook/internal/ImageDownloader;->enqueueRequest(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;Lcom/facebook/internal/WorkQueue;Ljava/lang/Runnable;)V

    return-void
.end method

.method private final enqueueDownload(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;)V
    .locals 2

    sget-object v0, Lcom/facebook/internal/ImageDownloader;->downloadQueue:Lcom/facebook/internal/WorkQueue;

    new-instance v1, Lcom/facebook/internal/ImageDownloader$DownloadImageWorkItem;

    invoke-direct {v1, p2}, Lcom/facebook/internal/ImageDownloader$DownloadImageWorkItem;-><init>(Lcom/facebook/internal/ImageDownloader$RequestKey;)V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/facebook/internal/ImageDownloader;->enqueueRequest(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;Lcom/facebook/internal/WorkQueue;Ljava/lang/Runnable;)V

    return-void
.end method

.method private final enqueueRequest(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;Lcom/facebook/internal/WorkQueue;Ljava/lang/Runnable;)V
    .locals 3

    sget-object v0, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/facebook/internal/ImageDownloader$DownloaderContext;

    invoke-direct {v1, p1}, Lcom/facebook/internal/ImageDownloader$DownloaderContext;-><init>(Lcom/facebook/internal/ImageRequest;)V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    const/4 p2, 0x2

    const/4 v2, 0x0

    invoke-static {p3, p4, p1, p2, v2}, Lcom/facebook/internal/WorkQueue;->addActiveWorkItem$default(Lcom/facebook/internal/WorkQueue;Ljava/lang/Runnable;ZILjava/lang/Object;)Lcom/facebook/internal/WorkQueue$WorkItem;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->setWorkItem(Lcom/facebook/internal/WorkQueue$WorkItem;)V

    sget-object p1, Lḓ/㧦;->உ:Lḓ/㧦;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method private final declared-synchronized getHandler()Landroid/os/Handler;
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/facebook/internal/ImageDownloader;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/facebook/internal/ImageDownloader;->handler:Landroid/os/Handler;

    :cond_0
    sget-object v0, Lcom/facebook/internal/ImageDownloader;->handler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final issueResponse(Lcom/facebook/internal/ImageDownloader$RequestKey;Ljava/lang/Exception;Landroid/graphics/Bitmap;Z)V
    .locals 7

    invoke-direct {p0, p1}, Lcom/facebook/internal/ImageDownloader;->removePendingRequest(Lcom/facebook/internal/ImageDownloader$RequestKey;)Lcom/facebook/internal/ImageDownloader$DownloaderContext;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->getRequest()Lcom/facebook/internal/ImageRequest;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/facebook/internal/ImageRequest;->getCallback()Lcom/facebook/internal/ImageRequest$Callback;

    move-result-object p1

    :goto_0
    move-object v6, p1

    if-eqz v6, :cond_2

    invoke-direct {p0}, Lcom/facebook/internal/ImageDownloader;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, L㺴/உ/ㄬ/ཇ;

    move-object v1, v0

    move-object v3, p2

    move v4, p4

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, L㺴/உ/ㄬ/ཇ;-><init>(Lcom/facebook/internal/ImageRequest;Ljava/lang/Exception;ZLandroid/graphics/Bitmap;Lcom/facebook/internal/ImageRequest$Callback;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method private static final issueResponse$lambda-4(Lcom/facebook/internal/ImageRequest;Ljava/lang/Exception;ZLandroid/graphics/Bitmap;Lcom/facebook/internal/ImageRequest$Callback;)V
    .locals 1

    const-string v0, "$request"

    invoke-static {p0, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/internal/ImageResponse;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/internal/ImageResponse;-><init>(Lcom/facebook/internal/ImageRequest;Ljava/lang/Exception;ZLandroid/graphics/Bitmap;)V

    invoke-interface {p4, v0}, Lcom/facebook/internal/ImageRequest$Callback;->onCompleted(Lcom/facebook/internal/ImageResponse;)V

    return-void
.end method

.method public static final prioritizeRequest(Lcom/facebook/internal/ImageRequest;)V
    .locals 2

    const-string v0, "request"

    invoke-static {p0, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/internal/ImageDownloader$RequestKey;

    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->getImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->getCallerTag()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/facebook/internal/ImageDownloader$RequestKey;-><init>(Landroid/net/Uri;Ljava/lang/Object;)V

    sget-object p0, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    monitor-enter p0

    :try_start_0
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->getWorkItem()Lcom/facebook/internal/WorkQueue$WorkItem;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/facebook/internal/WorkQueue$WorkItem;->moveToFront()V

    :cond_1
    :goto_0
    sget-object v0, Lḓ/㧦;->உ:Lḓ/㧦;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final readFromCache(Lcom/facebook/internal/ImageDownloader$RequestKey;Z)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    sget-object p2, Lcom/facebook/internal/UrlRedirectCache;->INSTANCE:Lcom/facebook/internal/UrlRedirectCache;

    invoke-virtual {p1}, Lcom/facebook/internal/ImageDownloader$RequestKey;->getUri()Landroid/net/Uri;

    move-result-object p2

    invoke-static {p2}, Lcom/facebook/internal/UrlRedirectCache;->getRedirectedUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_0

    sget-object v2, Lcom/facebook/internal/ImageResponseCache;->INSTANCE:Lcom/facebook/internal/ImageResponseCache;

    invoke-static {p2}, Lcom/facebook/internal/ImageResponseCache;->getCachedImageStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p2

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move-object p2, v1

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    sget-object p2, Lcom/facebook/internal/ImageResponseCache;->INSTANCE:Lcom/facebook/internal/ImageResponseCache;

    invoke-virtual {p1}, Lcom/facebook/internal/ImageDownloader$RequestKey;->getUri()Landroid/net/Uri;

    move-result-object p2

    invoke-static {p2}, Lcom/facebook/internal/ImageResponseCache;->getCachedImageStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p2

    :cond_2
    if-eqz p2, :cond_3

    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    sget-object v3, Lcom/facebook/internal/Utility;->INSTANCE:Lcom/facebook/internal/Utility;

    invoke-static {p2}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/facebook/internal/ImageDownloader;->issueResponse(Lcom/facebook/internal/ImageDownloader$RequestKey;Ljava/lang/Exception;Landroid/graphics/Bitmap;Z)V

    goto :goto_2

    :cond_3
    invoke-direct {p0, p1}, Lcom/facebook/internal/ImageDownloader;->removePendingRequest(Lcom/facebook/internal/ImageDownloader$RequestKey;)Lcom/facebook/internal/ImageDownloader$DownloaderContext;

    move-result-object p2

    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->getRequest()Lcom/facebook/internal/ImageRequest;

    move-result-object v1

    :goto_1
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->isCancelled()Z

    move-result p2

    if-nez p2, :cond_5

    if-eqz v1, :cond_5

    invoke-direct {p0, v1, p1}, Lcom/facebook/internal/ImageDownloader;->enqueueDownload(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private final removePendingRequest(Lcom/facebook/internal/ImageDownloader$RequestKey;)Lcom/facebook/internal/ImageDownloader$DownloaderContext;
    .locals 1

    sget-object v0, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/internal/ImageDownloader$DownloaderContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public static synthetic உ(Lcom/facebook/internal/ImageRequest;Ljava/lang/Exception;ZLandroid/graphics/Bitmap;Lcom/facebook/internal/ImageRequest$Callback;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/facebook/internal/ImageDownloader;->issueResponse$lambda-4(Lcom/facebook/internal/ImageRequest;Ljava/lang/Exception;ZLandroid/graphics/Bitmap;Lcom/facebook/internal/ImageRequest$Callback;)V

    return-void
.end method


# virtual methods
.method public final getPendingRequests()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/facebook/internal/ImageDownloader$RequestKey;",
            "Lcom/facebook/internal/ImageDownloader$DownloaderContext;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    return-object v0
.end method
