.class public L䂻/உ/䂻/䂻/உ$䂻;
.super Landroid/media/browse/MediaBrowser$ConnectionCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L䂻/உ/䂻/䂻/உ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u40bb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "L\u40bb/\u0b89/\u40bb/\u40bb/\u0b89$\u0b89;",
        ">",
        "Landroid/media/browse/MediaBrowser$ConnectionCallback;"
    }
.end annotation


# instance fields
.field public final உ:L䂻/உ/䂻/䂻/உ$உ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(L䂻/உ/䂻/䂻/உ$உ;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/media/browse/MediaBrowser$ConnectionCallback;-><init>()V

    iput-object p1, p0, L䂻/உ/䂻/䂻/உ$䂻;->உ:L䂻/உ/䂻/䂻/உ$உ;

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 1

    iget-object v0, p0, L䂻/உ/䂻/䂻/உ$䂻;->உ:L䂻/உ/䂻/䂻/உ$உ;

    invoke-interface {v0}, L䂻/உ/䂻/䂻/உ$உ;->䂻()V

    return-void
.end method

.method public onConnectionFailed()V
    .locals 1

    iget-object v0, p0, L䂻/உ/䂻/䂻/உ$䂻;->உ:L䂻/உ/䂻/䂻/உ$உ;

    invoke-interface {v0}, L䂻/உ/䂻/䂻/உ$உ;->㚬()V

    return-void
.end method

.method public onConnectionSuspended()V
    .locals 1

    iget-object v0, p0, L䂻/உ/䂻/䂻/உ$䂻;->உ:L䂻/உ/䂻/䂻/உ$உ;

    invoke-interface {v0}, L䂻/உ/䂻/䂻/உ$உ;->உ()V

    return-void
.end method
