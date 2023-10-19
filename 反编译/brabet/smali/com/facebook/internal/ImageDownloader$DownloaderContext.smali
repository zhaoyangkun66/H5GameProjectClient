.class public final Lcom/facebook/internal/ImageDownloader$DownloaderContext;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/ImageDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DownloaderContext"
.end annotation


# instance fields
.field private isCancelled:Z

.field private request:Lcom/facebook/internal/ImageRequest;

.field private workItem:Lcom/facebook/internal/WorkQueue$WorkItem;


# direct methods
.method public constructor <init>(Lcom/facebook/internal/ImageRequest;)V
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->request:Lcom/facebook/internal/ImageRequest;

    return-void
.end method


# virtual methods
.method public final getRequest()Lcom/facebook/internal/ImageRequest;
    .locals 1

    iget-object v0, p0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->request:Lcom/facebook/internal/ImageRequest;

    return-object v0
.end method

.method public final getWorkItem()Lcom/facebook/internal/WorkQueue$WorkItem;
    .locals 1

    iget-object v0, p0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->workItem:Lcom/facebook/internal/WorkQueue$WorkItem;

    return-object v0
.end method

.method public final isCancelled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->isCancelled:Z

    return v0
.end method

.method public final setCancelled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->isCancelled:Z

    return-void
.end method

.method public final setRequest(Lcom/facebook/internal/ImageRequest;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->request:Lcom/facebook/internal/ImageRequest;

    return-void
.end method

.method public final setWorkItem(Lcom/facebook/internal/WorkQueue$WorkItem;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->workItem:Lcom/facebook/internal/WorkQueue$WorkItem;

    return-void
.end method
