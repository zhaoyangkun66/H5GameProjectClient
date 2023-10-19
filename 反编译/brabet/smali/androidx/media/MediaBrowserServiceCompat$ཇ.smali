.class public Landroidx/media/MediaBrowserServiceCompat$ཇ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "\u0f47"
.end annotation


# instance fields
.field public final synthetic உ:Landroidx/media/MediaBrowserServiceCompat;


# direct methods
.method public constructor <init>(Landroidx/media/MediaBrowserServiceCompat;)V
    .locals 0

    iput-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$ཇ;->உ:Landroidx/media/MediaBrowserServiceCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public உ(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;Landroidx/media/MediaBrowserServiceCompat$ᓭ;)V
    .locals 8

    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$ཇ;->உ:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Landroidx/media/MediaBrowserServiceCompat;->ḓ:Landroidx/media/MediaBrowserServiceCompat$㲝;

    new-instance v7, Landroidx/media/MediaBrowserServiceCompat$ཇ$㚬;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Landroidx/media/MediaBrowserServiceCompat$ཇ$㚬;-><init>(Landroidx/media/MediaBrowserServiceCompat$ཇ;Landroidx/media/MediaBrowserServiceCompat$ᓭ;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V

    invoke-virtual {v0, v7}, Landroidx/media/MediaBrowserServiceCompat$㲝;->உ(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ᆻ(Ljava/lang/String;Landroid/os/Bundle;L䂻/உ/䂻/㚬/䂻;Landroidx/media/MediaBrowserServiceCompat$ᓭ;)V
    .locals 8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$ཇ;->உ:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Landroidx/media/MediaBrowserServiceCompat;->ḓ:Landroidx/media/MediaBrowserServiceCompat$㲝;

    new-instance v7, Landroidx/media/MediaBrowserServiceCompat$ཇ$ℓ;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Landroidx/media/MediaBrowserServiceCompat$ཇ$ℓ;-><init>(Landroidx/media/MediaBrowserServiceCompat$ཇ;Landroidx/media/MediaBrowserServiceCompat$ᓭ;Ljava/lang/String;Landroid/os/Bundle;L䂻/உ/䂻/㚬/䂻;)V

    invoke-virtual {v0, v7}, Landroidx/media/MediaBrowserServiceCompat$㲝;->உ(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public ḓ(Landroidx/media/MediaBrowserServiceCompat$ᓭ;Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 9

    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$ཇ;->உ:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Landroidx/media/MediaBrowserServiceCompat;->ḓ:Landroidx/media/MediaBrowserServiceCompat$㲝;

    new-instance v8, Landroidx/media/MediaBrowserServiceCompat$ཇ$䆀;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Landroidx/media/MediaBrowserServiceCompat$ཇ$䆀;-><init>(Landroidx/media/MediaBrowserServiceCompat$ཇ;Landroidx/media/MediaBrowserServiceCompat$ᓭ;Ljava/lang/String;IILandroid/os/Bundle;)V

    invoke-virtual {v0, v8}, Landroidx/media/MediaBrowserServiceCompat$㲝;->உ(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ℓ(Ljava/lang/String;Landroid/os/Bundle;L䂻/உ/䂻/㚬/䂻;Landroidx/media/MediaBrowserServiceCompat$ᓭ;)V
    .locals 8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$ཇ;->உ:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Landroidx/media/MediaBrowserServiceCompat;->ḓ:Landroidx/media/MediaBrowserServiceCompat$㲝;

    new-instance v7, Landroidx/media/MediaBrowserServiceCompat$ཇ$ㄏ;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Landroidx/media/MediaBrowserServiceCompat$ཇ$ㄏ;-><init>(Landroidx/media/MediaBrowserServiceCompat$ཇ;Landroidx/media/MediaBrowserServiceCompat$ᓭ;Ljava/lang/String;Landroid/os/Bundle;L䂻/உ/䂻/㚬/䂻;)V

    invoke-virtual {v0, v7}, Landroidx/media/MediaBrowserServiceCompat$㲝;->உ(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public ㄏ(Landroidx/media/MediaBrowserServiceCompat$ᓭ;)V
    .locals 2

    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$ཇ;->உ:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Landroidx/media/MediaBrowserServiceCompat;->ḓ:Landroidx/media/MediaBrowserServiceCompat$㲝;

    new-instance v1, Landroidx/media/MediaBrowserServiceCompat$ཇ$ᆻ;

    invoke-direct {v1, p0, p1}, Landroidx/media/MediaBrowserServiceCompat$ཇ$ᆻ;-><init>(Landroidx/media/MediaBrowserServiceCompat$ཇ;Landroidx/media/MediaBrowserServiceCompat$ᓭ;)V

    invoke-virtual {v0, v1}, Landroidx/media/MediaBrowserServiceCompat$㲝;->உ(Ljava/lang/Runnable;)V

    return-void
.end method

.method public 㚬(Landroidx/media/MediaBrowserServiceCompat$ᓭ;)V
    .locals 2

    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$ཇ;->உ:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Landroidx/media/MediaBrowserServiceCompat;->ḓ:Landroidx/media/MediaBrowserServiceCompat$㲝;

    new-instance v1, Landroidx/media/MediaBrowserServiceCompat$ཇ$䂻;

    invoke-direct {v1, p0, p1}, Landroidx/media/MediaBrowserServiceCompat$ཇ$䂻;-><init>(Landroidx/media/MediaBrowserServiceCompat$ཇ;Landroidx/media/MediaBrowserServiceCompat$ᓭ;)V

    invoke-virtual {v0, v1}, Landroidx/media/MediaBrowserServiceCompat$㲝;->உ(Ljava/lang/Runnable;)V

    return-void
.end method

.method public 㺴(Ljava/lang/String;L䂻/உ/䂻/㚬/䂻;Landroidx/media/MediaBrowserServiceCompat$ᓭ;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$ཇ;->உ:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Landroidx/media/MediaBrowserServiceCompat;->ḓ:Landroidx/media/MediaBrowserServiceCompat$㲝;

    new-instance v1, Landroidx/media/MediaBrowserServiceCompat$ཇ$ḓ;

    invoke-direct {v1, p0, p3, p1, p2}, Landroidx/media/MediaBrowserServiceCompat$ཇ$ḓ;-><init>(Landroidx/media/MediaBrowserServiceCompat$ཇ;Landroidx/media/MediaBrowserServiceCompat$ᓭ;Ljava/lang/String;L䂻/உ/䂻/㚬/䂻;)V

    invoke-virtual {v0, v1}, Landroidx/media/MediaBrowserServiceCompat$㲝;->உ(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public 䂻(Ljava/lang/String;IILandroid/os/Bundle;Landroidx/media/MediaBrowserServiceCompat$ᓭ;)V
    .locals 9

    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$ཇ;->உ:Landroidx/media/MediaBrowserServiceCompat;

    invoke-virtual {v0, p1, p3}, Landroidx/media/MediaBrowserServiceCompat;->㚬(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$ཇ;->உ:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Landroidx/media/MediaBrowserServiceCompat;->ḓ:Landroidx/media/MediaBrowserServiceCompat$㲝;

    new-instance v8, Landroidx/media/MediaBrowserServiceCompat$ཇ$உ;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p5

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Landroidx/media/MediaBrowserServiceCompat$ཇ$உ;-><init>(Landroidx/media/MediaBrowserServiceCompat$ཇ;Landroidx/media/MediaBrowserServiceCompat$ᓭ;Ljava/lang/String;IILandroid/os/Bundle;)V

    invoke-virtual {v0, v8}, Landroidx/media/MediaBrowserServiceCompat$㲝;->உ(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Package/uid mismatch: uid="

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " package="

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public 䆀(Ljava/lang/String;Landroid/os/IBinder;Landroidx/media/MediaBrowserServiceCompat$ᓭ;)V
    .locals 2

    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$ཇ;->உ:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Landroidx/media/MediaBrowserServiceCompat;->ḓ:Landroidx/media/MediaBrowserServiceCompat$㲝;

    new-instance v1, Landroidx/media/MediaBrowserServiceCompat$ཇ$㺴;

    invoke-direct {v1, p0, p3, p1, p2}, Landroidx/media/MediaBrowserServiceCompat$ཇ$㺴;-><init>(Landroidx/media/MediaBrowserServiceCompat$ཇ;Landroidx/media/MediaBrowserServiceCompat$ᓭ;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Landroidx/media/MediaBrowserServiceCompat$㲝;->உ(Ljava/lang/Runnable;)V

    return-void
.end method
