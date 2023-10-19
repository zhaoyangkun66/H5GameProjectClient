.class public L䂻/உ/䂻/䂻/䆀/㺴$உ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L䂻/உ/䂻/䂻/䆀/㺴;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u0b89"
.end annotation


# direct methods
.method public static உ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Landroid/media/session/MediaSession$QueueItem;

    invoke-virtual {p0}, Landroid/media/session/MediaSession$QueueItem;->getDescription()Landroid/media/MediaDescription;

    move-result-object p0

    return-object p0
.end method

.method public static 䂻(Ljava/lang/Object;)J
    .locals 2

    check-cast p0, Landroid/media/session/MediaSession$QueueItem;

    invoke-virtual {p0}, Landroid/media/session/MediaSession$QueueItem;->getQueueId()J

    move-result-wide v0

    return-wide v0
.end method
