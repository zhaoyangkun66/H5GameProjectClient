.class public L䂻/உ/䂻/䂻/உ$ḓ;
.super Landroid/media/browse/MediaBrowser$SubscriptionCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L䂻/உ/䂻/䂻/உ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u1e13"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "L\u40bb/\u0b89/\u40bb/\u40bb/\u0b89$\u3eb4;",
        ">",
        "Landroid/media/browse/MediaBrowser$SubscriptionCallback;"
    }
.end annotation


# instance fields
.field public final உ:L䂻/உ/䂻/䂻/உ$㺴;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(L䂻/உ/䂻/䂻/உ$㺴;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/media/browse/MediaBrowser$SubscriptionCallback;-><init>()V

    iput-object p1, p0, L䂻/உ/䂻/䂻/உ$ḓ;->உ:L䂻/உ/䂻/䂻/உ$㺴;

    return-void
.end method


# virtual methods
.method public onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, L䂻/உ/䂻/䂻/உ$ḓ;->உ:L䂻/உ/䂻/䂻/உ$㺴;

    invoke-interface {v0, p1, p2}, L䂻/உ/䂻/䂻/உ$㺴;->㚬(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, L䂻/உ/䂻/䂻/உ$ḓ;->உ:L䂻/உ/䂻/䂻/உ$㺴;

    invoke-interface {v0, p1}, L䂻/உ/䂻/䂻/உ$㺴;->㺴(Ljava/lang/String;)V

    return-void
.end method
