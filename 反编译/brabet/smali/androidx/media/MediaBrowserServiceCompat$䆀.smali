.class public Landroidx/media/MediaBrowserServiceCompat$䆀;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "\u4180"
.end annotation


# instance fields
.field public final உ:Ljava/lang/String;

.field public final synthetic ḓ:Landroidx/media/MediaBrowserServiceCompat;

.field public final 㚬:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "L\u36ac/\u2113/\u3e56/\u36ac<",
            "Landroid/os/IBinder;",
            "Landroid/os/Bundle;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public 㺴:Landroidx/media/MediaBrowserServiceCompat$ḓ;

.field public final 䂻:Landroidx/media/MediaBrowserServiceCompat$ᓭ;


# direct methods
.method public constructor <init>(Landroidx/media/MediaBrowserServiceCompat;Ljava/lang/String;IILandroid/os/Bundle;Landroidx/media/MediaBrowserServiceCompat$ᓭ;)V
    .locals 0

    iput-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$䆀;->ḓ:Landroidx/media/MediaBrowserServiceCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$䆀;->㚬:Ljava/util/HashMap;

    iput-object p2, p0, Landroidx/media/MediaBrowserServiceCompat$䆀;->உ:Ljava/lang/String;

    new-instance p1, L㚬/ბ/ℓ;

    invoke-direct {p1, p2, p3, p4}, L㚬/ბ/ℓ;-><init>(Ljava/lang/String;II)V

    iput-object p6, p0, Landroidx/media/MediaBrowserServiceCompat$䆀;->䂻:Landroidx/media/MediaBrowserServiceCompat$ᓭ;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$䆀;->ḓ:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Landroidx/media/MediaBrowserServiceCompat;->ḓ:Landroidx/media/MediaBrowserServiceCompat$㲝;

    new-instance v1, Landroidx/media/MediaBrowserServiceCompat$䆀$உ;

    invoke-direct {v1, p0}, Landroidx/media/MediaBrowserServiceCompat$䆀$உ;-><init>(Landroidx/media/MediaBrowserServiceCompat$䆀;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
