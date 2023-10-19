.class public Landroidx/media/MediaBrowserServiceCompat$ἥ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u1f25"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final உ:Ljava/lang/Object;

.field public ḓ:I

.field public 㚬:Z

.field public 㺴:Z

.field public 䂻:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$ἥ;->உ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public உ()I
    .locals 1

    iget v0, p0, Landroidx/media/MediaBrowserServiceCompat$ἥ;->ḓ:I

    return v0
.end method

.method public ᆻ(I)V
    .locals 0

    iput p1, p0, Landroidx/media/MediaBrowserServiceCompat$ἥ;->ḓ:I

    return-void
.end method

.method public ḓ(Landroid/os/Bundle;)V
    .locals 2

    iget-boolean v0, p0, Landroidx/media/MediaBrowserServiceCompat$ἥ;->㚬:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/media/MediaBrowserServiceCompat$ἥ;->㺴:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media/MediaBrowserServiceCompat$ἥ;->㺴:Z

    invoke-virtual {p0, p1}, Landroidx/media/MediaBrowserServiceCompat$ἥ;->㚬(Landroid/os/Bundle;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendError() called when either sendResult() or sendError() had already been called for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$ἥ;->உ:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public 㚬(Landroid/os/Bundle;)V
    .locals 2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "It is not supported to send an error for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$ἥ;->உ:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public 㺴(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const p0, 0x0

    throw p0
.end method

.method public 䂻()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/media/MediaBrowserServiceCompat$ἥ;->䂻:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/media/MediaBrowserServiceCompat$ἥ;->㚬:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/media/MediaBrowserServiceCompat$ἥ;->㺴:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public 䆀(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Landroidx/media/MediaBrowserServiceCompat$ἥ;->㚬:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/media/MediaBrowserServiceCompat$ἥ;->㺴:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media/MediaBrowserServiceCompat$ἥ;->㚬:Z

    invoke-virtual {p0, p1}, Landroidx/media/MediaBrowserServiceCompat$ἥ;->㺴(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendResult() called when either sendResult() or sendError() had already been called for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$ἥ;->உ:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
